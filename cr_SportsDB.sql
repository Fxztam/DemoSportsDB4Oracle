
--------------------------------------------------------------------------------
-- Modified for Oracle DB: Friedhold Matz - 19.06.2020
--------------------------------------------------------------------------------

PROMPT 'Create proc drop_object ---'
BEGIN 
    BEGIN 
        EXECUTE IMMEDIATE 'drop procedure drop_object'; 
        EXCEPTION WHEN OTHERS THEN NULL;
    END;
    BEGIN
        EXECUTE IMMEDIATE '
            CREATE PROCEDURE drop_object (p_type VARCHAR2, p_name VARCHAR2) IS 
                BEGIN
                    EXECUTE IMMEDIATE ''drop ''||p_type||''  ''||p_name; 
                EXCEPTION WHEN OTHERS THEN NULL;
            END drop_object;
        '; 
        EXCEPTION WHEN OTHERS THEN NULL;
    END;
END;
/

PROMPT 'Drop objects ---'
BEGIN
    drop_object('table',  'addresses cascade constraint');
    drop_object('table',  'affiliation_phases cascade constraint');
    drop_object('table',  'affiliations cascade constraint');
    drop_object('table',  'affiliations_documents cascade constraint');
    drop_object('table',  'affiliations_events cascade constraint');
    drop_object('table',  'affiliations_media cascade constraint');
    drop_object('table',  'american_football_action_participants cascade constraint');
    drop_object('table',  'american_football_action_plays cascade constraint');
    drop_object('table',  'american_football_defensive_stats cascade constraint');
    drop_object('table',  'american_football_down_progress_stats cascade constraint');
    drop_object('table',  'american_football_event_states cascade constraint');
    drop_object('table',  'american_football_fumbles_stats cascade constraint');
    drop_object('table',  'american_football_offensive_stats cascade constraint');
    drop_object('table',  'american_football_passing_stats cascade constraint');
    drop_object('table',  'american_football_penalties_stats cascade constraint');
    drop_object('table',  'american_football_rushing_stats cascade constraint');
    drop_object('table',  'american_football_sacks_against_stats cascade constraint');
    drop_object('table',  'american_football_scoring_stats cascade constraint');
    drop_object('table',  'american_football_special_teams_stats cascade constraint');
    drop_object('table',  'baseball_action_contact_details cascade constraint');
    drop_object('table',  'baseball_action_pitches cascade constraint');
    drop_object('table',  'baseball_action_plays cascade constraint');
    drop_object('table',  'baseball_action_substitutions cascade constraint');
    drop_object('table',  'baseball_defensive_group cascade constraint');
    drop_object('table',  'baseball_defensive_players cascade constraint');
    drop_object('table',  'baseball_defensive_stats cascade constraint');
    drop_object('table',  'baseball_event_states cascade constraint');
    drop_object('table',  'baseball_offensive_stats cascade constraint');
    drop_object('table',  'baseball_pitching_stats cascade constraint');
    drop_object('table',  'basketball_defensive_stats cascade constraint');
    drop_object('table',  'basketball_event_states cascade constraint');
    drop_object('table',  'basketball_offensive_stats cascade constraint');
    drop_object('table',  'basketball_rebounding_stats cascade constraint');
    drop_object('table',  'basketball_team_stats cascade constraint');
    drop_object('table',  'bookmakers cascade constraint');
    drop_object('table',  'core_person_stats cascade constraint');
    drop_object('table',  'core_stats cascade constraint');
    drop_object('table',  'db_info cascade constraint');
    drop_object('table',  'display_names cascade constraint');
    drop_object('table',  'document_classes cascade constraint');
    drop_object('table',  'document_contents cascade constraint');
    drop_object('table',  'document_fixtures cascade constraint');
    drop_object('table',  'document_fixtures_events cascade constraint');
    drop_object('table',  'document_package_entry cascade constraint');
    drop_object('table',  'document_packages cascade constraint');
    drop_object('table',  'documents cascade constraint');
    drop_object('table',  'documents_media cascade constraint');
    drop_object('table',  'events cascade constraint');
    drop_object('table',  'events_documents cascade constraint');
    drop_object('table',  'events_media cascade constraint');
    drop_object('table',  'events_sub_seasons cascade constraint');
    drop_object('table',  'ice_hockey_action_participants cascade constraint');
    drop_object('table',  'ice_hockey_action_plays cascade constraint');
    drop_object('table',  'ice_hockey_defensive_stats cascade constraint');
    drop_object('table',  'ice_hockey_event_states cascade constraint');
    drop_object('table',  'ice_hockey_offensive_stats cascade constraint');
    drop_object('table',  'ice_hockey_player_stats cascade constraint');
    drop_object('table',  'injury_phases cascade constraint');
    drop_object('table',  'key_aliases cascade constraint');
    drop_object('table',  'key_roots cascade constraint');
    drop_object('table',  'latest_revisions cascade constraint');
    drop_object('table',  'locations cascade constraint');
    drop_object('table',  'media cascade constraint');
    drop_object('table',  'media_captions cascade constraint');
    drop_object('table',  'media_contents cascade constraint');
    drop_object('table',  'media_keywords cascade constraint');
    drop_object('table',  'motor_racing_event_states cascade constraint');
    drop_object('table',  'motor_racing_qualifying_stats cascade constraint');
    drop_object('table',  'motor_racing_race_stats cascade constraint');
    drop_object('table',  'outcome_totals cascade constraint');
    drop_object('table',  'participants_events cascade constraint');
    drop_object('table',  'periods cascade constraint');
    drop_object('table',  'person_event_metadata cascade constraint');
    drop_object('table',  'person_phases cascade constraint');
    drop_object('table',  'persons cascade constraint');
    drop_object('table',  'persons_documents cascade constraint');
    drop_object('table',  'persons_media cascade constraint');
    drop_object('table',  'positions cascade constraint');
    drop_object('table',  'publishers cascade constraint');
    drop_object('table',  'roles cascade constraint');
    drop_object('table',  'seasons cascade constraint');
    drop_object('table',  'sites cascade constraint');
    drop_object('table',  'soccer_defensive_stats cascade constraint');
    drop_object('table',  'soccer_event_states cascade constraint');
    drop_object('table',  'soccer_foul_stats cascade constraint');
    drop_object('table',  'soccer_offensive_stats cascade constraint');
    drop_object('table',  'standing_subgroups cascade constraint');
    drop_object('table',  'standings cascade constraint');
    drop_object('table',  'stats cascade constraint');
    drop_object('table',  'sub_periods cascade constraint');
    drop_object('table',  'sub_seasons cascade constraint');
    drop_object('table',  'team_american_football_stats cascade constraint');
    drop_object('table',  'team_phases cascade constraint');
    drop_object('table',  'teams cascade constraint');
    drop_object('table',  'teams_documents cascade constraint');
    drop_object('table',  'teams_media cascade constraint');
    drop_object('table',  'tennis_action_points cascade constraint');
    drop_object('table',  'tennis_action_volleys cascade constraint');
    drop_object('table',  'tennis_event_states cascade constraint');
    drop_object('table',  'tennis_return_stats cascade constraint');
    drop_object('table',  'tennis_service_stats cascade constraint');
    drop_object('table',  'wagering_moneylines cascade constraint');
    drop_object('table',  'wagering_odds_lines cascade constraint');
    drop_object('table',  'wagering_runlines cascade constraint');
    drop_object('table',  'wagering_straight_spread_lines cascade constraint');
    drop_object('table',  'wagering_total_score_lines cascade constraint');
    drop_object('table',  'weather_conditions cascade constraint');  

    -- drop pending system created sequences --
    EXECUTE IMMEDIATE 'purge recyclebin';
END;
/
PROMPT '--- BO select User objects ---'
select  OBJECT_NAME from user_objects;
-- only :: DROP_OBJECT ??? --
PROMPT '--- EO select User objects ---'

PROMPT '--- BO - Create User objects ---'

--
-- get_serial_sequence('addresses', 'id'), 1, false);
--
PROMPT '... Table: addresses ...'
CREATE TABLE addresses (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    location_id NUMBER(10) NOT NULL,
    "language" VARCHAR2(100),
    suite VARCHAR2(100),
    floor VARCHAR2(100),
    building VARCHAR2(100),
    street_number VARCHAR2(100),
    street_prefix VARCHAR2(100),
    street VARCHAR2(100),
    street_suffix VARCHAR2(100),
    neighborhood VARCHAR2(100),
    district VARCHAR2(100),
    locality VARCHAR2(100),
    county VARCHAR2(100),
    region VARCHAR2(100),
    postal_code VARCHAR2(100),
    country VARCHAR2(100)
);

--
-- get_serial_sequence('affiliation_phases', 'id'), 75, true);
--
PROMPT '... Table: affiliation_phases ...'
CREATE TABLE affiliation_phases (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 75 INCREMENT by 1),
    affiliation_id NUMBER(10) NOT NULL,
    ancestor_affiliation_id NUMBER(10),
    start_season_id NUMBER(10),
    start_date_time DATE,
    end_season_id NUMBER(10),
    end_date_time DATE
);

--
-- get_serial_sequence('affiliations', 'id'), 29, true);
--
PROMPT '... Table: affiliations ...'
CREATE TABLE affiliations (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 29 INCREMENT by 1),
    affiliation_key VARCHAR2(100) NOT NULL,
    affiliation_type VARCHAR2(100),
    publisher_id NUMBER(10) NOT NULL
);

--
-- 
--
PROMPT '... Table: affiliations_documents ...'
CREATE TABLE affiliations_documents (
    affiliation_id NUMBER(10) NOT NULL,
    document_id NUMBER(10) NOT NULL
);

--
-- 
--
PROMPT '... Table: affiliations_events ...'
CREATE TABLE affiliations_events (
    affiliation_id NUMBER(10) NOT NULL,
    event_id NUMBER(10) NOT NULL
);

--
-- 
--
PROMPT '... Table: affiliations_media ...'
CREATE TABLE affiliations_media (
    affiliation_id NUMBER(10) NOT NULL,
    media_id NUMBER(10) NOT NULL
);

--
-- get_serial_sequence('american_football_action_participants', 'id'), 293, true);
--
PROMPT '... Table: american_football_action_participants ...'
CREATE TABLE american_football_action_participants (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 293 INCREMENT by 1),
    american_football_action_play_id NUMBER(10) NOT NULL,
    person_id NUMBER(10) NOT NULL,
    participant_role VARCHAR2(100) NOT NULL,
    score_type VARCHAR2(100),
    field_line NUMBER(10),
    yardage NUMBER(10),
    score_credit NUMBER(10),
    yards_gained NUMBER(10)
);

--
-- get_serial_sequence('american_football_action_plays', 'id'), 179, true);
--
PROMPT '... Table: american_football_action_plays ...'
CREATE TABLE american_football_action_plays (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 179 INCREMENT by 1),
    american_football_event_state_id NUMBER(10) NOT NULL,
    play_type VARCHAR2(100),
    score_attempt_type VARCHAR2(100),
    drive_result VARCHAR2(100),
    points NUMBER(10),
    "comment" VARCHAR2(255)
);

--
-- get_serial_sequence('american_football_defensive_stats', 'id'), 751, true);
--
PROMPT '... Table: american_football_defensive_stats ...'
CREATE TABLE american_football_defensive_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 751 INCREMENT by 1),
    tackles_total VARCHAR2(100),
    tackles_solo VARCHAR2(100),
    tackles_assists VARCHAR2(100),
    interceptions_total VARCHAR2(100),
    interceptions_yards VARCHAR2(100),
    interceptions_average VARCHAR2(100),
    interceptions_longest VARCHAR2(100),
    interceptions_touchdown VARCHAR2(100),
    quarterback_hurries VARCHAR2(100),
    sacks_total VARCHAR2(100),
    sacks_yards VARCHAR2(100),
    passes_defensed VARCHAR2(100)
);

--
-- get_serial_sequence('american_football_down_progress_stats', 'id'), 36, true);
--
PROMPT '... Table: american_football_down_progress_stats ...'
CREATE TABLE american_football_down_progress_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 36 INCREMENT by 1),
    first_downs_total VARCHAR2(100),
    first_downs_pass VARCHAR2(100),
    first_downs_run VARCHAR2(100),
    first_downs_penalty VARCHAR2(100),
    conversions_third_down VARCHAR2(100),
    conversions_third_down_attempts VARCHAR2(100),
    conversions_third_down_percentage VARCHAR2(100),
    conversions_fourth_down VARCHAR2(100),
    conversions_fourth_down_attempts VARCHAR2(100),
    conversions_fourth_down_percentage VARCHAR2(100)
);

--
-- get_serial_sequence('american_football_event_states', 'id'), 249, true);
--
PROMPT '... Table: american_football_event_states ...'
CREATE TABLE american_football_event_states (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 249 INCREMENT by 1),
    event_id NUMBER(10) NOT NULL,
    current_state smallint,
    sequence_number NUMBER(10),
    period_value NUMBER(10),
    period_time_elapsed VARCHAR2(100),
    period_time_remaining VARCHAR2(100),
    clock_state VARCHAR2(100),
    down NUMBER(10),
    team_in_possession_id NUMBER(10),
    distance_for_1st_down NUMBER(10),
    field_side VARCHAR2(100),
    field_line NUMBER(10),
    context VARCHAR2(40)
);

--
-- get_serial_sequence('american_football_fumbles_stats', 'id'), 121, true);
--
PROMPT '... Table: american_football_fumbles_stats ...'
CREATE TABLE american_football_fumbles_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 121 INCREMENT by 1),
    fumbles_committed VARCHAR2(100),
    fumbles_forced VARCHAR2(100),
    fumbles_recovered VARCHAR2(100),
    fumbles_lost VARCHAR2(100),
    fumbles_yards_gained VARCHAR2(100),
    fumbles_own_committed VARCHAR2(100),
    fumbles_own_recovered VARCHAR2(100),
    fumbles_own_lost VARCHAR2(100),
    fumbles_own_yards_gained VARCHAR2(100),
    fumbles_opposing_committed VARCHAR2(100),
    fumbles_opposing_recovered VARCHAR2(100),
    fumbles_opposing_lost VARCHAR2(100),
    fumbles_opposing_yards_gained VARCHAR2(100)
);

--
-- get_serial_sequence('american_football_offensive_stats', 'id'), 36, true);
--
PROMPT '... Table: american_football_offensive_stats ...'
CREATE TABLE american_football_offensive_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 36 INCREMENT by 1),
    offensive_plays_yards VARCHAR2(100),
    offensive_plays_number VARCHAR2(100),
    offensive_plays_average_yards_per VARCHAR2(100),
    possession_duration VARCHAR2(100),
    turnovers_giveaway VARCHAR2(100)
);

--
-- get_serial_sequence('american_football_passing_stats', 'id'), 301, true);
--
PROMPT '... Table: american_football_passing_stats ...'
CREATE TABLE american_football_passing_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 301 INCREMENT by 1),
    passes_attempts VARCHAR2(100),
    passes_completions VARCHAR2(100),
    passes_percentage VARCHAR2(100),
    passes_yards_gross VARCHAR2(100),
    passes_yards_net VARCHAR2(100),
    passes_yards_lost VARCHAR2(100),
    passes_touchdowns VARCHAR2(100),
    passes_touchdowns_percentage VARCHAR2(100),
    passes_interceptions VARCHAR2(100),
    passes_interceptions_percentage VARCHAR2(100),
    passes_longest VARCHAR2(100),
    passes_average_yards_per VARCHAR2(100),
    passer_rating VARCHAR2(100),
    receptions_total VARCHAR2(100),
    receptions_yards VARCHAR2(100),
    receptions_touchdowns VARCHAR2(100),
    receptions_first_down VARCHAR2(100),
    receptions_longest VARCHAR2(100),
    receptions_average_yards_per VARCHAR2(100)
);

--
-- get_serial_sequence('american_football_penalties_stats', 'id'), 36, true);
--
PROMPT '... Table: american_football_penalties_stats ...'
CREATE TABLE american_football_penalties_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 36 INCREMENT by 1),
    penalties_total VARCHAR2(100),
    penalty_yards VARCHAR2(100),
    penalty_first_downs VARCHAR2(100)
);

--
-- get_serial_sequence('american_football_rushing_stats', 'id'), 175, true);
--
PROMPT '... Table: american_football_rushing_stats ...'
CREATE TABLE american_football_rushing_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 175 INCREMENT by 1),
    rushes_attempts VARCHAR2(100),
    rushes_yards VARCHAR2(100),
    rushes_touchdowns VARCHAR2(100),
    rushing_average_yards_per VARCHAR2(100),
    rushes_first_down VARCHAR2(100),
    rushes_longest VARCHAR2(100)
);

--
-- get_serial_sequence('american_football_sacks_against_stats', 'id'), 77, true);
--
PROMPT '... Table: american_football_sacks_against_stats ...'
CREATE TABLE american_football_sacks_against_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 77 INCREMENT by 1),
    sacks_against_yards VARCHAR2(100),
    sacks_against_total VARCHAR2(100)
);

--
-- get_serial_sequence('american_football_scoring_stats', 'id'), 842, true);
--
PROMPT '... Table: american_football_scoring_stats ...'
CREATE TABLE american_football_scoring_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 842 INCREMENT by 1),
    touchdowns_total VARCHAR2(100),
    touchdowns_passing VARCHAR2(100),
    touchdowns_rushing VARCHAR2(100),
    touchdowns_special_teams VARCHAR2(100),
    touchdowns_defensive VARCHAR2(100),
    extra_points_attempts VARCHAR2(100),
    extra_points_made VARCHAR2(100),
    extra_points_missed VARCHAR2(100),
    extra_points_blocked VARCHAR2(100),
    field_goal_attempts VARCHAR2(100),
    field_goals_made VARCHAR2(100),
    field_goals_missed VARCHAR2(100),
    field_goals_blocked VARCHAR2(100),
    safeties_against VARCHAR2(100),
    two_point_conversions_attempts VARCHAR2(100),
    two_point_conversions_made VARCHAR2(100),
    touchbacks_total VARCHAR2(100)
);

--
-- get_serial_sequence('american_football_special_teams_stats', 'id'), 142, true); 
--
PROMPT '... Table: american_football_special_teams_stats ...'
CREATE TABLE american_football_special_teams_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 142 INCREMENT by 1),
    returns_punt_total VARCHAR2(100),
    returns_punt_yards VARCHAR2(100),
    returns_punt_average VARCHAR2(100),
    returns_punt_longest VARCHAR2(100),
    returns_punt_touchdown VARCHAR2(100),
    returns_kickoff_total VARCHAR2(100),
    returns_kickoff_yards VARCHAR2(100),
    returns_kickoff_average VARCHAR2(100),
    returns_kickoff_longest VARCHAR2(100),
    returns_kickoff_touchdown VARCHAR2(100),
    returns_total VARCHAR2(100),
    returns_yards VARCHAR2(100),
    punts_total VARCHAR2(100),
    punts_yards_gross VARCHAR2(100),
    punts_yards_net VARCHAR2(100),
    punts_longest VARCHAR2(100),
    punts_inside_20 VARCHAR2(100),
    punts_inside_20_percentage VARCHAR2(100),
    punts_average VARCHAR2(100),
    punts_blocked VARCHAR2(100),
    touchbacks_total VARCHAR2(100),
    touchbacks_total_percentage VARCHAR2(100),
    touchbacks_kickoffs VARCHAR2(100),
    touchbacks_kickoffs_percentage VARCHAR2(100),
    touchbacks_punts VARCHAR2(100),
    touchbacks_punts_percentage VARCHAR2(100),
    touchbacks_interceptions VARCHAR2(100),
    touchbacks_interceptions_percentage VARCHAR2(100),
    fair_catches VARCHAR2(100)
);

--
-- get_serial_sequence('baseball_action_contact_details', 'id'), 1, false);
--
PROMPT '... Table: baseball_action_contact_details ...'
CREATE TABLE baseball_action_contact_details (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    baseball_action_pitch_id NUMBER(10) NOT NULL,
    "location" VARCHAR2(100),
    strength VARCHAR2(100),
    velocity NUMBER(10),
    "comment" VARCHAR2(4000),
    trajectory_coordinates VARCHAR2(100),
    trajectory_formula VARCHAR2(100)
);

--
-- get_serial_sequence('baseball_action_pitches', 'id'), 1, false);
--
PROMPT '... Table: baseball_action_pitches ...'
CREATE TABLE baseball_action_pitches (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    baseball_action_play_id NUMBER(10) NOT NULL,
    sequence_number NUMBER(10),
    baseball_defensive_group_id NUMBER(10),
    umpire_call VARCHAR2(100),
    pitch_location VARCHAR2(100),
    pitch_type VARCHAR2(100),
    pitch_velocity NUMBER(10),
    "comment" VARCHAR2(4000),
    trajectory_coordinates VARCHAR2(100),
    trajectory_formula VARCHAR2(100),
    ball_type VARCHAR2(40),
    strike_type VARCHAR2(40)
);

--
-- get_serial_sequence('baseball_action_plays', 'id'), 17, true);
--
PROMPT '... Table: baseball_action_plays ...'
CREATE TABLE baseball_action_plays (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 17 INCREMENT by 1),
    baseball_event_state_id NUMBER(10) NOT NULL,
    play_type VARCHAR2(100),
    notation VARCHAR2(100),
    notation_yaml VARCHAR2(4000),
    baseball_defensive_group_id NUMBER(10),
    "comment" VARCHAR2(255),
    runner_on_first_advance NUMBER(10),
    runner_on_second_advance NUMBER(10),
    runner_on_third_advance NUMBER(10),
    outs_recorded NUMBER(10),
    rbi NUMBER(10),
    runs_scored NUMBER(10),
    earned_runs_scored VARCHAR2(100)
);

--
-- get_serial_sequence('baseball_action_substitutions', 'id'), 1, false);
--
PROMPT '... Table: baseball_action_substitutions ...'
CREATE TABLE baseball_action_substitutions (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    baseball_event_state_id NUMBER(10) NOT NULL,
    sequence_number NUMBER(10),
    person_type VARCHAR2(100),
    person_original_id NUMBER(10),
    person_original_position_id NUMBER(10),
    person_original_lineup_slot NUMBER(10),
    person_replacing_id NUMBER(10),
    person_replacing_position_id NUMBER(10),
    person_replacing_lineup_slot NUMBER(10),
    substitution_reason VARCHAR2(100),
    "comment" VARCHAR2(100)
);

--
-- get_serial_sequence('baseball_defensive_group', 'id'), 1, false);
--
PROMPT '... Table: baseball_defensive_group ...'
CREATE TABLE baseball_defensive_group (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1)
);

--
-- get_serial_sequence('baseball_defensive_players', 'id'), 1, false);
--
PROMPT '... Table: baseball_defensive_players ...'
CREATE TABLE baseball_defensive_players (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    baseball_defensive_group_id NUMBER(10) NOT NULL,
    player_id NUMBER(10) NOT NULL,
    position_id NUMBER(10) NOT NULL
);

--
-- get_serial_sequence('baseball_defensive_stats', 'id'), 1724, true);
--
PROMPT '... Table: baseball_defensive_stats ...'
CREATE TABLE baseball_defensive_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1724 INCREMENT by 1),
    double_plays NUMBER(10),
    triple_plays NUMBER(10),
    putouts NUMBER(10),
    assists NUMBER(10),
    errors NUMBER(10),
    fielding_percentage numeric,
    defensive_average numeric,
    errors_passed_ball NUMBER(10),
    errors_catchers_interference NUMBER(10)
);

--
-- get_serial_sequence('baseball_event_states', 'id'), 17, true);
--
PROMPT '... Table: baseball_event_states ...'
CREATE TABLE baseball_event_states (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 17 INCREMENT by 1),
    event_id NUMBER(10) NOT NULL,
    current_state smallint,
    sequence_number NUMBER(10),
    at_bat_number NUMBER(10),
    inning_value NUMBER(10),
    inning_half VARCHAR2(100),
    outs NUMBER(10),
    balls NUMBER(10),
    strikes NUMBER(10),
    runner_on_first_id NUMBER(10),
    runner_on_second_id NUMBER(10),
    runner_on_third_id NUMBER(10),
    runner_on_first smallint,
    runner_on_second smallint,
    runner_on_third smallint,
    runs_this_inning_half NUMBER(10),
    pitcher_id NUMBER(10),
    batter_id NUMBER(10),
    batter_side VARCHAR2(100),
    context VARCHAR2(40)
);

--
-- get_serial_sequence('baseball_offensive_stats', 'id'), 1724, true);
--
PROMPT '... Table: baseball_offensive_stats ...'
CREATE TABLE baseball_offensive_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1724 INCREMENT by 1),
    average numeric,
    runs_scored NUMBER(10),
    at_bats NUMBER(10),
    hits NUMBER(10),
    rbi NUMBER(10),
    total_bases NUMBER(10),
    slugging_percentage numeric,
    bases_on_balls NUMBER(10),
    strikeouts NUMBER(10),
    left_on_base NUMBER(10),
    left_in_scoring_position NUMBER(10),
    singles NUMBER(10),
    doubles NUMBER(10),
    triples NUMBER(10),
    home_runs NUMBER(10),
    grand_slams NUMBER(10),
    at_bats_per_rbi numeric,
    plate_appearances_per_rbi numeric,
    at_bats_per_home_run numeric,
    plate_appearances_per_home_run numeric,
    sac_flies NUMBER(10),
    sac_bunts NUMBER(10),
    grounded_into_double_play NUMBER(10),
    moved_up NUMBER(10),
    on_base_percentage numeric,
    stolen_bases NUMBER(10),
    stolen_bases_caught NUMBER(10),
    stolen_bases_average numeric,
    hit_by_pitch NUMBER(10),
    defensive_interferance_reaches NUMBER(10),
    on_base_plus_slugging numeric,
    plate_appearances NUMBER(10),
    hits_extra_base NUMBER(10)
);

--
-- get_serial_sequence('baseball_pitching_stats', 'id'), 852, true);
--
PROMPT '... Table: baseball_pitching_stats ...'
CREATE TABLE baseball_pitching_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 852 INCREMENT by 1),
    runs_allowed NUMBER(10),
    singles_allowed NUMBER(10),
    doubles_allowed NUMBER(10),
    triples_allowed NUMBER(10),
    home_runs_allowed NUMBER(10),
    innings_pitched VARCHAR2(20),
    hits NUMBER(10),
    earned_runs NUMBER(10),
    unearned_runs NUMBER(10),
    bases_on_balls NUMBER(10),
    bases_on_balls_intentional NUMBER(10),
    strikeouts NUMBER(10),
    strikeout_to_bb_ratio numeric,
    number_of_pitches NUMBER(10),
    era numeric,
    inherited_runners_scored NUMBER(10),
    pick_offs NUMBER(10),
    errors_hit_with_pitch NUMBER(10),
    errors_wild_pitch NUMBER(10),
    balks NUMBER(10),
    wins NUMBER(10),
    losses NUMBER(10),
    saves NUMBER(10),
    shutouts NUMBER(10),
    games_complete NUMBER(10),
    games_finished NUMBER(10),
    winning_percentage numeric,
    event_credit VARCHAR2(40),
    save_credit VARCHAR2(40)
);

--
-- get_serial_sequence('basketball_defensive_stats', 'id'), 164, true);
--
PROMPT '... Table: basketball_defensive_stats ...'
CREATE TABLE basketball_defensive_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 164 INCREMENT by 1),
    steals_total VARCHAR2(100),
    steals_per_game VARCHAR2(100),
    blocks_total VARCHAR2(100),
    blocks_per_game VARCHAR2(100)
);

--
-- get_serial_sequence('basketball_event_states', 'id'), 1, false);
--
PROMPT '... Table: basketball_event_states ...'
CREATE TABLE basketball_event_states (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    event_id NUMBER(10) NOT NULL,
    current_state NUMBER(10),
    sequence_number NUMBER(10),
    period_value VARCHAR2(100),
    period_time_elapsed VARCHAR2(100),
    period_time_remaining VARCHAR2(100),
    context VARCHAR2(40)
);

--
-- get_serial_sequence('basketball_offensive_stats', 'id'), 164, true);
--
PROMPT '... Table: basketball_offensive_stats ...'
CREATE TABLE basketball_offensive_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 164 INCREMENT by 1),
    field_goals_made NUMBER(10),
    field_goals_attempted NUMBER(10),
    field_goals_percentage VARCHAR2(100),
    field_goals_per_game VARCHAR2(100),
    field_goals_attempted_per_game VARCHAR2(100),
    field_goals_percentage_adjusted VARCHAR2(100),
    three_pointers_made NUMBER(10),
    three_pointers_attempted NUMBER(10),
    three_pointers_percentage VARCHAR2(100),
    three_pointers_per_game VARCHAR2(100),
    three_pointers_attempted_per_game VARCHAR2(100),
    free_throws_made VARCHAR2(100),
    free_throws_attempted VARCHAR2(100),
    free_throws_percentage VARCHAR2(100),
    free_throws_per_game VARCHAR2(100),
    free_throws_attempted_per_game VARCHAR2(100),
    points_scored_total VARCHAR2(100),
    points_scored_per_game VARCHAR2(100),
    assists_total VARCHAR2(100),
    assists_per_game VARCHAR2(100),
    turnovers_total VARCHAR2(100),
    turnovers_per_game VARCHAR2(100),
    points_scored_off_turnovers VARCHAR2(100),
    points_scored_in_paint VARCHAR2(100),
    points_scored_on_second_chance VARCHAR2(100),
    points_scored_on_fast_break VARCHAR2(100)
);

--
-- get_serial_sequence('basketball_rebounding_stats', 'id'), 164, true);
--
PROMPT '... Table: basketball_rebounding_stats ...'
CREATE TABLE basketball_rebounding_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 164 INCREMENT by 1),
    rebounds_total VARCHAR2(100),
    rebounds_per_game VARCHAR2(100),
    rebounds_defensive VARCHAR2(100),
    rebounds_offensive VARCHAR2(100),
    team_rebounds_total VARCHAR2(100),
    team_rebounds_per_game VARCHAR2(100),
    team_rebounds_defensive VARCHAR2(100),
    team_rebounds_offensive VARCHAR2(100)
);

--
-- get_serial_sequence('basketball_team_stats', 'id'), 1, false);
--
PROMPT '... Table: basketball_team_stats ...'
CREATE TABLE basketball_team_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    timeouts_left VARCHAR2(100),
    largest_lead VARCHAR2(100),
    fouls_total VARCHAR2(100),
    turnover_margin VARCHAR2(100)
);

--
-- get_serial_sequence('bookmakers', 'id'), 1, false);
--
PROMPT '... Table: bookmakers ...'
CREATE TABLE bookmakers (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    bookmaker_key VARCHAR2(100),
    publisher_id NUMBER(10) NOT NULL,
    location_id NUMBER(10)
);

--
-- get_serial_sequence('core_person_stats', 'id'), 2588, true); 
--
PROMPT '... Table: core_person_stats ...'
CREATE TABLE core_person_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 2588 INCREMENT by 1),
    time_played_event VARCHAR2(40),
    time_played_total VARCHAR2(40),
    time_played_event_average VARCHAR2(40),
    events_played NUMBER(10),
    events_started NUMBER(10),
    position_id NUMBER(10)
);

--
-- get_serial_sequence('core_stats', 'id'), 1, false);
--
PROMPT '... Table: core_stats ...'
CREATE TABLE core_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    score VARCHAR2(100),
    score_opposing VARCHAR2(100),
    score_attempts VARCHAR2(100),
    score_attempts_opposing VARCHAR2(100),
    score_percentage VARCHAR2(100),
    score_percentage_opposing VARCHAR2(100)
);

--
-- 
--
PROMPT '... Table: db_info ...'
CREATE TABLE db_info (
    version VARCHAR2(100) DEFAULT 16 NOT NULL
);

--
-- get_serial_sequence('display_names', 'id'), 3958, true);
--
PROMPT '... Table: display_names ...'
CREATE TABLE display_names (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 3958 INCREMENT by 1),
    "language" VARCHAR2(100) NOT NULL,
    entity_type VARCHAR2(100) NOT NULL,
    entity_id NUMBER(10) NOT NULL,
    full_name VARCHAR2(100),
    first_name VARCHAR2(100),
    middle_name VARCHAR2(100),
    last_name VARCHAR2(100),
    alias VARCHAR2(100),
    abbreviation VARCHAR2(100),
    short_name VARCHAR2(100),
    prefix VARCHAR2(20),
    suffix VARCHAR2(20)
);

--
-- get_serial_sequence('document_classes', 'id'), 6, true);
--
PROMPT '... Table: document_classes ...'
CREATE TABLE document_classes (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 6 INCREMENT by 1),
    name VARCHAR2(100)
);

--
-- get_serial_sequence('document_contents', 'id'), 414, true);
--
PROMPT '... Table: document_contents ...'
CREATE TABLE document_contents (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 414 INCREMENT by 1),
    document_id NUMBER(10) NOT NULL,
    sportsml VARCHAR2(200),
    abstract VARCHAR2(4000)
);

--
-- get_serial_sequence('document_fixtures', 'id'), 12, true);
--
PROMPT '... Table: document_fixtures ...'
CREATE TABLE document_fixtures (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 12 INCREMENT by 1),
    fixture_key VARCHAR2(100),
    publisher_id NUMBER(10) NOT NULL,
    name VARCHAR2(100),
    document_class_id NUMBER(10) NOT NULL
);


--
-- get_serial_sequence('document_fixtures_events', 'id'), 7915, true);
--
PROMPT '... Table: document_fixtures_events ...'
CREATE TABLE document_fixtures_events (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 7915 INCREMENT by 1),
    document_fixture_id NUMBER(10) NOT NULL,
    event_id NUMBER(10) NOT NULL,
    latest_document_id NUMBER(10) NOT NULL,
    last_update DATE
);

--
-- get_serial_sequence('document_package_entry', 'id'), 1, false);
--
PROMPT '... Table: document_package_entry ...'
CREATE TABLE document_package_entry (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    document_package_id NUMBER(10) NOT NULL,
    rank VARCHAR2(100),
    document_id NUMBER(10) NOT NULL,
    headline VARCHAR2(100),
    short_headline VARCHAR2(100)
);

--
-- get_serial_sequence('document_packages', 'id'), 1, false)
--
PROMPT '... Table: document_packages ...'
CREATE TABLE document_packages (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    package_key VARCHAR2(100),
    package_name VARCHAR2(100),
    date_time DATE
);

--
-- get_serial_sequence('documents', 'id'), 414, true);
--
PROMPT '... Table: documents ...'
CREATE TABLE documents (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 414 INCREMENT by 1),
    doc_id character varying(75) NOT NULL,
    publisher_id NUMBER(10) NOT NULL,
    date_time DATE,
    title VARCHAR2(255),
    "language" VARCHAR2(100),
    priority VARCHAR2(100),
    revision_id character varying(75),
    stats_coverage VARCHAR2(100),
    document_fixture_id NUMBER(10) NOT NULL,
    source_id NUMBER(10),
    db_loading_date_time TIMESTAMP
);

--
-- get_serial_sequence('documents_media', 'id'), 1, false);
--
PROMPT '... Table: documents_media ...'
CREATE TABLE documents_media (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    document_id NUMBER(10) NOT NULL,
    media_id NUMBER(10) NOT NULL,
    media_caption_id NUMBER(10) NOT NULL
);

--
-- get_serial_sequence('events', 'id'), 4350, true);
--
PROMPT '... Table: events ...'
CREATE TABLE events (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 4350 INCREMENT by 1),
    event_key VARCHAR2(100) NOT NULL,
    publisher_id NUMBER(10) NOT NULL,
    start_date_time DATE,
    site_id NUMBER(10),
    site_alignment VARCHAR2(100),
    event_status VARCHAR2(100),
    duration VARCHAR2(100),
    attendance VARCHAR2(100),
    last_update DATE
);

--
--
--
PROMPT '... Table: events_documents ...'
CREATE TABLE events_documents (
    event_id NUMBER(10) NOT NULL,
    document_id NUMBER(10) NOT NULL
);

--
-- 
--
PROMPT '... Table: events_media ...'
CREATE TABLE events_media (
    event_id NUMBER(10) NOT NULL,
    media_id NUMBER(10) NOT NULL
);


--
-- 
--
PROMPT '... Table: events_sub_seasons ...'
CREATE TABLE events_sub_seasons (
    event_id NUMBER(10) NOT NULL,
    sub_season_id NUMBER(10) NOT NULL
);


--
-- get_serial_sequence('ice_hockey_action_participants', 'id'), 199, true);
--
PROMPT '... Table: ice_hockey_action_participants ...'
CREATE TABLE ice_hockey_action_participants (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 199 INCREMENT by 1),
    ice_hockey_action_play_id NUMBER(10) NOT NULL,
    person_id NUMBER(10) NOT NULL,
    participant_role VARCHAR2(100) NOT NULL,
    point_credit NUMBER(10)
);

--
-- get_serial_sequence('ice_hockey_action_plays', 'id'), 51, true);
--
PROMPT '... Table: ice_hockey_action_plays ...'
CREATE TABLE ice_hockey_action_plays (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 51 INCREMENT by 1),
    ice_hockey_event_state_id NUMBER(10) NOT NULL,
    play_type VARCHAR2(100),
    score_attempt_type VARCHAR2(100),
    play_result VARCHAR2(100),
    "comment" VARCHAR2(255)
);

--
-- get_serial_sequence('ice_hockey_defensive_stats', 'id'), 94, true);
--
PROMPT '... Table: ice_hockey_defensive_stats ...'
CREATE TABLE ice_hockey_defensive_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 94 INCREMENT by 1),
    shots_power_play_allowed VARCHAR2(100),
    shots_penalty_shot_allowed VARCHAR2(100),
    goals_power_play_allowed VARCHAR2(100),
    goals_penalty_shot_allowed VARCHAR2(100),
    goals_against_average VARCHAR2(100),
    saves VARCHAR2(100),
    save_percentage VARCHAR2(100),
    penalty_killing_amount VARCHAR2(100),
    penalty_killing_percentage VARCHAR2(100),
    shots_blocked VARCHAR2(100),
    takeaways VARCHAR2(100),
    shutouts VARCHAR2(100),
    minutes_penalty_killing VARCHAR2(100),
    hits VARCHAR2(100),
    goals_empty_net_allowed VARCHAR2(100),
    goals_short_handed_allowed VARCHAR2(100),
    goals_shootout_allowed VARCHAR2(100),
    shots_shootout_allowed VARCHAR2(100)
);

--
-- get_serial_sequence('ice_hockey_event_states', 'id'), 51, true);
--
PROMPT '... Table: ice_hockey_event_states ...'
CREATE TABLE ice_hockey_event_states (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 51 INCREMENT by 1),
    event_id NUMBER(10) NOT NULL,
    current_state NUMBER(10),
    sequence_number NUMBER(10),
    period_value VARCHAR2(100),
    period_time_elapsed VARCHAR2(100),
    period_time_remaining VARCHAR2(100),
    context VARCHAR2(40)
);

--
-- get_serial_sequence('ice_hockey_offensive_stats', 'id'), 1112, true);
--
PROMPT '... Table: ice_hockey_offensive_stats ...'
CREATE TABLE ice_hockey_offensive_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1112 INCREMENT by 1),
    goals_game_winning VARCHAR2(100),
    goals_game_tying VARCHAR2(100),
    goals_power_play VARCHAR2(100),
    goals_short_handed VARCHAR2(100),
    goals_even_strength VARCHAR2(100),
    goals_empty_net VARCHAR2(100),
    goals_overtime VARCHAR2(100),
    goals_shootout VARCHAR2(100),
    goals_penalty_shot VARCHAR2(100),
    assists VARCHAR2(100),
    points VARCHAR2(100),
    power_play_amount VARCHAR2(100),
    power_play_percentage VARCHAR2(100),
    shots_penalty_shot_taken VARCHAR2(100),
    shots_penalty_shot_missed VARCHAR2(100),
    shots_penalty_shot_percentage VARCHAR2(100),
    giveaways VARCHAR2(100),
    minutes_power_play VARCHAR2(100),
    faceoff_wins VARCHAR2(100),
    faceoff_losses VARCHAR2(100),
    faceoff_win_percentage VARCHAR2(100),
    scoring_chances VARCHAR2(100)
);

--
-- get_serial_sequence('ice_hockey_player_stats', 'id'), 1072, true);
--
PROMPT '... Table: ice_hockey_player_stats ...'
CREATE TABLE ice_hockey_player_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1072 INCREMENT by 1),
    plus_minus VARCHAR2(100)
);

--
-- get_serial_sequence('injury_phases', 'id'), 771, true);
--
PROMPT '... Table: injury_phases ...'
CREATE TABLE injury_phases (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 771 INCREMENT by 1),
    person_id NUMBER(10) NOT NULL,
    injury_status VARCHAR2(100),
    injury_type VARCHAR2(100),
    injury_comment VARCHAR2(100),
    disabled_list VARCHAR2(100),
    start_date_time DATE,
    end_date_time DATE,
    season_id NUMBER(10),
    phase_type VARCHAR2(100),
    injury_side VARCHAR2(100)
);

--
-- get_serial_sequence('key_aliases', 'id'), 1, false);
--
PROMPT '... Table: key_aliases ...'
CREATE TABLE key_aliases (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    key_id NUMBER(10) NOT NULL,
    key_root_id NUMBER(10) NOT NULL
);

--
-- get_serial_sequence('key_roots', 'id'), 1, false);
--
PROMPT '... Table: key_roots ...'
CREATE TABLE key_roots (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    key_type VARCHAR2(100)
);

--
-- get_serial_sequence('latest_revisions', 'id'), 295, true);
--
PROMPT '... Table: latest_revisions ...'
CREATE TABLE latest_revisions (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 295 INCREMENT by 1),
    revision_id character varying(75) NOT NULL,
    latest_document_id NUMBER(10) NOT NULL
);

--
-- get_serial_sequence('locations', 'id'), 1, false);
--
PROMPT '... Table: locations ...'
CREATE TABLE locations (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    timezone VARCHAR2(100),
    latitude VARCHAR2(100),
    longitude VARCHAR2(100),
    country_code VARCHAR2(100)
);

--
-- get_serial_sequence('media', 'id'), 1, false);
--
PROMPT '... Table: media ...'
CREATE TABLE media (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    object_id NUMBER(10),
    source_id NUMBER(10),
    revision_id NUMBER(10),
    media_type VARCHAR2(100),
    publisher_id NUMBER(10) NOT NULL,
    date_time VARCHAR2(100),
    credit_id NUMBER(10) NOT NULL,
    db_loading_date_time DATE,
    creation_location_id NUMBER(10) NOT NULL
);


--
-- get_serial_sequence('media_captions', 'id'), 1, false);
--
PROMPT '... Table: media_captions ...'
CREATE TABLE media_captions (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    media_id NUMBER(10) NOT NULL,
    caption_type VARCHAR2(100),
    caption VARCHAR2(100),
    caption_author_id NUMBER(10) NOT NULL,
    "language" VARCHAR2(100),
    caption_size VARCHAR2(100)
);

--
-- get_serial_sequence('media_contents', 'id'), 1, false);
--
PROMPT '... Table: media_contents ...'
CREATE TABLE media_contents (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    media_id NUMBER(10) NOT NULL,
    "object" VARCHAR2(100),
    format VARCHAR2(100),
    mime_type VARCHAR2(100),
    height VARCHAR2(100),
    width VARCHAR2(100),
    duration VARCHAR2(100),
    file_size VARCHAR2(100),
    resolution VARCHAR2(100)
);

--
-- get_serial_sequence('media_keywords', 'id'), 1, false);
--
PROMPT '... Table: media_keywords ...'
CREATE TABLE media_keywords (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    keyword VARCHAR2(100),
    media_id NUMBER(10) NOT NULL
);

--
-- get_serial_sequence('motor_racing_event_states', 'id'), 1, false);
--
PROMPT '... Table: motor_racing_event_states ...'
CREATE TABLE motor_racing_event_states (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    event_id NUMBER(10) NOT NULL,
    current_state NUMBER(10),
    sequence_number NUMBER(10),
    lap VARCHAR2(100),
    laps_remaining VARCHAR2(100),
    time_elapsed VARCHAR2(100),
    flag_state VARCHAR2(100),
    context VARCHAR2(40)
);

--
-- get_serial_sequence('motor_racing_qualifying_stats', 'id'), 1, false);
--
PROMPT '... Table: motor_racing_qualifying_stats ...'
CREATE TABLE motor_racing_qualifying_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    grid VARCHAR2(100),
    pole_position VARCHAR2(100),
    pole_wins VARCHAR2(100),
    qualifying_speed VARCHAR2(100),
    qualifying_speed_units VARCHAR2(100),
    qualifying_time VARCHAR2(100),
    qualifying_position VARCHAR2(100)
);

--
-- get_serial_sequence('motor_racing_race_stats', 'id'), 1, false);
--
PROMPT '... Table: motor_racing_race_stats ...'
CREATE TABLE motor_racing_race_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    time_behind_leader VARCHAR2(100),
    laps_behind_leader VARCHAR2(100),
    time_ahead_follower VARCHAR2(100),
    laps_ahead_follower VARCHAR2(100),
    "time" VARCHAR2(100),
    points VARCHAR2(100),
    points_rookie VARCHAR2(100),
    bonus VARCHAR2(100),
    laps_completed VARCHAR2(100),
    laps_leading_total VARCHAR2(100),
    distance_leading VARCHAR2(100),
    distance_completed VARCHAR2(100),
    distance_units VARCHAR2(40),
    speed_average VARCHAR2(40),
    speed_units VARCHAR2(40),
    status VARCHAR2(40),
    finishes_top_5 VARCHAR2(40),
    finishes_top_10 VARCHAR2(40),
    starts VARCHAR2(40),
    finishes VARCHAR2(40),
    non_finishes VARCHAR2(40),
    wins VARCHAR2(40),
    races_leading VARCHAR2(40),
    money VARCHAR2(40),
    money_units VARCHAR2(40),
    leads_total VARCHAR2(40)
);

--
-- get_serial_sequence('outcome_totals', 'id'), 1, false);
--
PROMPT '... Table: outcome_totals ...'
CREATE TABLE outcome_totals (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    standing_subgroup_id NUMBER(10) NOT NULL,
    outcome_holder_type VARCHAR2(100),
    outcome_holder_id NUMBER(10),
    rank VARCHAR2(100),
    wins VARCHAR2(100),
    losses VARCHAR2(100),
    ties VARCHAR2(100),
    undecideds VARCHAR2(100),
    winning_percentage VARCHAR2(100),
    points_scored_for VARCHAR2(100),
    points_scored_against VARCHAR2(100),
    points_difference VARCHAR2(100),
    standing_points VARCHAR2(100),
    streak_type VARCHAR2(100),
    streak_duration VARCHAR2(100),
    streak_total VARCHAR2(100),
    streak_start date,
    streak_end date
);

--
-- get_serial_sequence('participants_events', 'id'), 8700, true);
--
PROMPT '... Table: participants_events ...'
CREATE TABLE participants_events (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 8700 INCREMENT by 1),
    participant_type VARCHAR2(100) NOT NULL,
    participant_id NUMBER(10) NOT NULL,
    event_id NUMBER(10) NOT NULL,
    alignment VARCHAR2(100),
    score VARCHAR2(100),
    event_outcome VARCHAR2(100),
    rank NUMBER(10)
);

--
-- get_serial_sequence('periods', 'id'), 548, true);
--
PROMPT '... Table: periods ...'
CREATE TABLE periods (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 548 INCREMENT by 1),
    participant_event_id NUMBER(10) NOT NULL,
    period_value VARCHAR2(100),
    score VARCHAR2(100)
);

--
-- get_serial_sequence('person_event_metadata', 'id'), 4002, true);
--
PROMPT '... Table: person_event_metadata ...'
CREATE TABLE person_event_metadata (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 4002 INCREMENT by 1),
    person_id NUMBER(10) NOT NULL,
    event_id NUMBER(10) NOT NULL,
    status VARCHAR2(100),
    health VARCHAR2(100),
    weight VARCHAR2(100),
    role_id NUMBER(10),
    position_id NUMBER(10),
    team_id NUMBER(10),
    lineup_slot NUMBER(10),
    lineup_slot_sequence NUMBER(10)
);

--
-- get_serial_sequence('person_phases', 'id'), 1, false);
--
PROMPT '... Table: person_phases ...'
CREATE TABLE person_phases (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    person_id NUMBER(10) NOT NULL,
    membership_type VARCHAR2(40) NOT NULL,
    membership_id NUMBER(10) NOT NULL,
    role_id NUMBER(10),
    role_status VARCHAR2(40),
    phase_status VARCHAR2(40),
    uniform_number VARCHAR2(20),
    regular_position_id NUMBER(10),
    regular_position_depth VARCHAR2(40),
    height VARCHAR2(100),
    weight VARCHAR2(100),
    start_date_time DATE,
    start_season_id NUMBER(10),
    end_date_time DATE,
    end_season_id NUMBER(10),
    entry_reason VARCHAR2(40),
    exit_reason VARCHAR2(40)
    --- SELECTion_level NUMBER(10),
    --- SELECTion_sublevel NUMBER(10),
    --- SELECTion_overall NUMBER(10)
);

--
-- get_serial_sequence('persons', 'id'), 3937, true);
--
PROMPT '... Table: persons ...'
CREATE TABLE persons (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 3937 INCREMENT by 1),
    person_key VARCHAR2(100) NOT NULL,
    publisher_id NUMBER(10) NOT NULL,
    gender VARCHAR2(20),
    birth_date character varying(30),
    death_date character varying(30),
    birth_location_id NUMBER(10),
    hometown_location_id NUMBER(10),
    residence_location_id NUMBER(10),
    death_location_id NUMBER(10)
);


--
-- 
--
PROMPT '... Table: persons_documents ...'
CREATE TABLE persons_documents (
    person_id NUMBER(10) NOT NULL,
    document_id NUMBER(10) NOT NULL
);

--
-- 
--
PROMPT '... Table: persons_media ...'
CREATE TABLE persons_media (
    person_id NUMBER(10) NOT NULL,
    media_id NUMBER(10) NOT NULL
);

--
-- get_serial_sequence('positions', 'id'), 73, true);
--
PROMPT '... Table: positions ...'
CREATE TABLE positions (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 73 INCREMENT by 1),
    affiliation_id NUMBER(10) NOT NULL,
    abbreviation VARCHAR2(100) NOT NULL
);

--
-- get_serial_sequence('publishers', 'id'), 1, true);
--
PROMPT '... Table: publishers ...'
CREATE TABLE publishers (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    publisher_key VARCHAR2(100) NOT NULL,
    publisher_name VARCHAR2(100)
);

--
-- get_serial_sequence('roles', 'id'), 1, false);
--
PROMPT '... Table: roles ...'
CREATE TABLE roles (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    role_key VARCHAR2(100) NOT NULL,
    role_name VARCHAR2(100),
    "comment" VARCHAR2(100)
);

--
-- get_serial_sequence('seasons', 'id'), 4, true);
--
PROMPT '... Table: seasons ...'
CREATE TABLE seasons (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 4 INCREMENT by 1),
    season_key NUMBER(10) NOT NULL,
    publisher_id NUMBER(10) NOT NULL,
    league_id NUMBER(10) NOT NULL,
    start_date_time DATE,
    end_date_time DATE
);

--
-- get_serial_sequence('sites', 'id'), 1, false);
--
PROMPT '... Table: sites ...'
CREATE TABLE sites (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    site_key NUMBER(10) NOT NULL,
    publisher_id NUMBER(10) NOT NULL,
    location_id NUMBER(10)
);

--
-- get_serial_sequence('soccer_defensive_stats', 'id'), 1, false);
--
PROMPT '... Table: soccer_defensive_stats ...'
CREATE TABLE soccer_defensive_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    shots_penalty_shot_allowed VARCHAR2(100),
    goals_penalty_shot_allowed VARCHAR2(100),
    goals_against_average VARCHAR2(100),
    goals_against_total VARCHAR2(100),
    saves VARCHAR2(100),
    save_percentage VARCHAR2(100),
    catches_punches VARCHAR2(100),
    shots_on_goal_total VARCHAR2(100),
    shots_shootout_total VARCHAR2(100),
    shots_shootout_allowed VARCHAR2(100),
    shots_blocked VARCHAR2(100),
    shutouts VARCHAR2(100)
);

--
-- get_serial_sequence('soccer_event_states', 'id'), 1, false);
--
PROMPT '... Table: soccer_event_states ...'
CREATE TABLE soccer_event_states (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    event_id NUMBER(10) NOT NULL,
    current_state NUMBER(10),
    sequence_number NUMBER(10),
    period_value VARCHAR2(100),
    period_time_elapsed VARCHAR2(100),
    period_time_remaining VARCHAR2(100),
    minutes_elapsed VARCHAR2(100),
    period_minute_elapsed VARCHAR2(100),
    context VARCHAR2(40)
);

--
-- get_serial_sequence('soccer_foul_stats', 'id'), 1, false);
--
PROMPT '... Table: soccer_foul_stats ...'
CREATE TABLE soccer_foul_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    fouls_suffered VARCHAR2(100),
    fouls_commited VARCHAR2(100),
    cautions_total VARCHAR2(100),
    cautions_pending VARCHAR2(100),
    caution_points_total VARCHAR2(100),
    caution_points_pending VARCHAR2(100),
    ejections_total VARCHAR2(100)
);

--
-- get_serial_sequence('soccer_offensive_stats', 'id'), 1, false);
--
PROMPT '... Table: soccer_offensive_stats ...'
CREATE TABLE soccer_offensive_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    goals_game_winning VARCHAR2(100),
    goals_game_tying VARCHAR2(100),
    goals_overtime VARCHAR2(100),
    goals_shootout VARCHAR2(100),
    goals_total VARCHAR2(100),
    assists_game_winning VARCHAR2(100),
    assists_game_tying VARCHAR2(100),
    assists_overtime VARCHAR2(100),
    assists_total VARCHAR2(100),
    points VARCHAR2(100),
    shots_total VARCHAR2(100),
    shots_on_goal_total VARCHAR2(100),
    shots_hit_frame VARCHAR2(100),
    shots_penalty_shot_taken VARCHAR2(100),
    shots_penalty_shot_scored VARCHAR2(100),
    shots_penalty_shot_missed VARCHAR2(40),
    shots_penalty_shot_percentage VARCHAR2(40),
    shots_shootout_taken VARCHAR2(40),
    shots_shootout_scored VARCHAR2(40),
    shots_shootout_missed VARCHAR2(40),
    shots_shootout_percentage VARCHAR2(40),
    giveaways VARCHAR2(40),
    offsides VARCHAR2(40),
    corner_kicks VARCHAR2(40),
    hat_tricks VARCHAR2(40)
);

--
-- get_serial_sequence('standing_subgroups', 'id'), 1, false);
--
PROMPT '... Table: standing_subgroups ...'
CREATE TABLE standing_subgroups (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    standing_id NUMBER(10) NOT NULL,
    affiliation_id NUMBER(10) NOT NULL
);

--
-- get_serial_sequence('standings', 'id'), 1, false);
--
PROMPT '... Table: standings ...'
CREATE TABLE standings (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    affiliation_id NUMBER(10) NOT NULL,
    standing_type VARCHAR2(100),
    sub_season_id NUMBER(10) NOT NULL,
    last_updated VARCHAR2(100),
    duration_scope VARCHAR2(100),
    competition_scope VARCHAR2(100),
    competition_scope_id VARCHAR2(100),
    alignment_scope VARCHAR2(100),
    site_scope VARCHAR2(100),
    scoping_label VARCHAR2(100),
    publisher_id NUMBER(10) NOT NULL,
    source VARCHAR2(100)
);

--
-- get_serial_sequence('stats', 'id'), 12211, true);
--
PROMPT '... Table: stats ...'
CREATE TABLE stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 12211 INCREMENT by 1),
    stat_repository_type VARCHAR2(100),
    stat_repository_id NUMBER(10) NOT NULL,
    stat_holder_type VARCHAR2(100),
    stat_holder_id NUMBER(10),
    stat_coverage_type VARCHAR2(100),
    stat_coverage_id NUMBER(10),
    context VARCHAR2(40) NOT NULL
);

--
-- get_serial_sequence('sub_periods', 'id'), 1, false);
--
PROMPT '... Table: sub_periods ...'
CREATE TABLE sub_periods (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    period_id NUMBER(10) NOT NULL,
    sub_period_value VARCHAR2(100),
    score VARCHAR2(100)
);

--
-- get_serial_sequence('sub_seasons', 'id'), 4, true);
--
PROMPT '... Table: sub_seasons ...'
CREATE TABLE sub_seasons (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 4 INCREMENT by 1),
    sub_season_key VARCHAR2(100) NOT NULL,
    season_id NUMBER(10) NOT NULL,
    sub_season_type VARCHAR2(100) NOT NULL,
    start_date_time DATE,
    end_date_time DATE
);

--
-- get_serial_sequence('team_american_football_stats', 'id'), 36, true);
--
PROMPT '... Table: team_american_football_stats ...'
CREATE TABLE team_american_football_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 36 INCREMENT by 1),
    yards_per_attempt VARCHAR2(100),
    average_starting_position VARCHAR2(100),
    timeouts VARCHAR2(100),
    time_of_possession VARCHAR2(100),
    turnover_ratio VARCHAR2(100)
);

--
-- get_serial_sequence('team_phases', 'id'), 368, true);
--
PROMPT '... Table: team_phases ...'
CREATE TABLE team_phases (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 368 INCREMENT by 1),
    team_id NUMBER(10) NOT NULL,
    start_season_id NUMBER(10),
    end_season_id NUMBER(10),
    affiliation_id NUMBER(10) NOT NULL,
    start_date_time VARCHAR2(100),
    end_date_time VARCHAR2(100),
    phase_status VARCHAR2(40),
    role_id NUMBER(10)
);

--
-- get_serial_sequence('teams', 'id'), 128, true);
--
PROMPT '... Table: teams ...'
CREATE TABLE teams (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 128 INCREMENT by 1),
    team_key VARCHAR2(100) NOT NULL,
    publisher_id NUMBER(10) NOT NULL,
    home_site_id NUMBER(10)
);

--
-- 
--
PROMPT '... Table: teams_documents ...'
CREATE TABLE teams_documents (
    team_id NUMBER(10) NOT NULL,
    document_id NUMBER(10) NOT NULL
);

--
-- 
--
PROMPT '... Table: teams_media ...'
CREATE TABLE teams_media (
    team_id NUMBER(10) NOT NULL,
    media_id NUMBER(10) NOT NULL
);

--
-- get_serial_sequence('tennis_action_points', 'id'), 1, false);
--
PROMPT '... Table: tennis_action_points ...'
CREATE TABLE tennis_action_points (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    sub_period_id VARCHAR2(100),
    sequence_number VARCHAR2(100),
    win_type VARCHAR2(100)
);

--
-- get_serial_sequence('tennis_action_volleys', 'id'), 1, false);
--
PROMPT '... Table: tennis_action_volleys ...'
CREATE TABLE tennis_action_volleys (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    sequence_number VARCHAR2(100),
    tennis_action_points_id NUMBER(10),
    landing_location VARCHAR2(100),
    swing_type VARCHAR2(100),
    result VARCHAR2(100),
    spin_type VARCHAR2(100),
    trajectory_details VARCHAR2(100)
);

--
-- get_serial_sequence('tennis_event_states', 'id'), 1, false);
--
PROMPT '... Table: tennis_event_states ...'
CREATE TABLE tennis_event_states (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    event_id NUMBER(10) NOT NULL,
    current_state NUMBER(10),
    sequence_number NUMBER(10),
    tennis_set VARCHAR2(100),
    game VARCHAR2(100),
    server_person_id NUMBER(10),
    server_score VARCHAR2(100),
    receiver_person_id NUMBER(10),
    receiver_score VARCHAR2(100),
    service_number VARCHAR2(100),
    context VARCHAR2(40)
);

--
-- get_serial_sequence('tennis_return_stats', 'id'), 1, false);
--
PROMPT '... Table: tennis_return_stats ...'
CREATE TABLE tennis_return_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    returns_played VARCHAR2(100),
    matches_played VARCHAR2(100),
    first_service_return_points_won VARCHAR2(100),
    first_service_return_points_won_pct VARCHAR2(100),
    second_service_return_points_won VARCHAR2(100),
    second_service_return_points_won_pct VARCHAR2(100),
    return_games_played VARCHAR2(100),
    return_games_won VARCHAR2(100),
    return_games_won_pct VARCHAR2(100),
    break_points_played VARCHAR2(100),
    break_points_converted VARCHAR2(100),
    break_points_converted_pct VARCHAR2(100)
);

--
-- get_serial_sequence('tennis_service_stats', 'id'), 1, false);
--
PROMPT '... Table: tennis_service_stats ...'
CREATE TABLE tennis_service_stats (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    services_played VARCHAR2(100),
    matches_played VARCHAR2(100),
    aces VARCHAR2(100),
    first_services_good VARCHAR2(100),
    first_services_good_pct VARCHAR2(100),
    first_service_points_won VARCHAR2(100),
    first_service_points_won_pct VARCHAR2(100),
    second_service_points_won VARCHAR2(100),
    second_service_points_won_pct VARCHAR2(100),
    service_games_played VARCHAR2(100),
    service_games_won VARCHAR2(100),
    service_games_won_pct VARCHAR2(100),
    break_points_played VARCHAR2(100),
    break_points_saved VARCHAR2(100),
    break_points_saved_pct VARCHAR2(100)
);

--
-- get_serial_sequence('wagering_moneylines', 'id'), 1, false);
--
PROMPT '... Table: wagering_moneylines ...'
CREATE TABLE wagering_moneylines (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    bookmaker_id NUMBER(10) NOT NULL,
    event_id NUMBER(10) NOT NULL,
    date_time DATE,
    team_id NUMBER(10) NOT NULL,
    person_id NUMBER(10),
    rotation_key VARCHAR2(100),
    "comment" VARCHAR2(100),
    vigorish VARCHAR2(100),
    line VARCHAR2(100),
    line_opening VARCHAR2(100),
    prediction VARCHAR2(100)
);

--
-- get_serial_sequence('wagering_odds_lines', 'id'), 1, false);
--
PROMPT '... Table: wagering_odds_lines ...'
CREATE TABLE wagering_odds_lines (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    bookmaker_id NUMBER(10) NOT NULL,
    event_id NUMBER(10) NOT NULL,
    date_time DATE,
    team_id NUMBER(10) NOT NULL,
    person_id NUMBER(10),
    rotation_key VARCHAR2(100),
    "comment" VARCHAR2(100),
    numerator VARCHAR2(100),
    denominator VARCHAR2(100),
    prediction VARCHAR2(100),
    payout_calculation VARCHAR2(100),
    payout_amount VARCHAR2(100)
);

--
-- get_serial_sequence('wagering_runlines', 'id'), 1, false);
--
PROMPT '... Table: wagering_runlines ...'
CREATE TABLE wagering_runlines (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    bookmaker_id NUMBER(10) NOT NULL,
    event_id NUMBER(10) NOT NULL,
    date_time DATE,
    team_id NUMBER(10) NOT NULL,
    person_id NUMBER(10),
    rotation_key VARCHAR2(100),
    "comment" VARCHAR2(100),
    vigorish VARCHAR2(100),
    line VARCHAR2(100),
    line_opening VARCHAR2(100),
    line_value VARCHAR2(100),
    prediction VARCHAR2(100)
);

--
-- get_serial_sequence('wagering_straight_spread_lines', 'id'), 1, false);
--
PROMPT '... Table: wagering_straight_spread_lines ...'
CREATE TABLE wagering_straight_spread_lines (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    bookmaker_id NUMBER(10) NOT NULL,
    event_id NUMBER(10) NOT NULL,
    date_time DATE,
    team_id NUMBER(10) NOT NULL,
    person_id NUMBER(10),
    rotation_key VARCHAR2(100),
    "comment" VARCHAR2(100),
    vigorish VARCHAR2(100),
    line_value VARCHAR2(100),
    line_value_opening VARCHAR2(100),
    prediction VARCHAR2(100)
);

--
-- get_serial_sequence('wagering_total_score_lines', 'id'), 1, false);
--
PROMPT '... Table: wagering_total_score_lines ...'
CREATE TABLE wagering_total_score_lines (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    bookmaker_id NUMBER(10) NOT NULL,
    event_id NUMBER(10) NOT NULL,
    date_time DATE,
    team_id NUMBER(10) NOT NULL,
    person_id NUMBER(10),
    rotation_key VARCHAR2(100),
    "comment" VARCHAR2(100),
    vigorish VARCHAR2(100),
    line_over VARCHAR2(100),
    line_under VARCHAR2(100),
    total VARCHAR2(100),
    total_opening VARCHAR2(100),
    prediction VARCHAR2(100)
);

--
-- get_serial_sequence('weather_conditions', 'id'), 1, false);
--
PROMPT '... Table: weather_conditions ...'
CREATE TABLE weather_conditions (
    id NUMBER(10) GENERATED BY DEFAULT ON NULL as IDENTITY(START with 1 INCREMENT by 1),
    event_id NUMBER(10) NOT NULL,
    temperature VARCHAR2(100),
    temperature_units VARCHAR2(40),
    humidity VARCHAR2(100),
    clouds VARCHAR2(100),
    wind_direction VARCHAR2(100),
    wind_velocity VARCHAR2(100),
    weather_code VARCHAR2(100)
);

PROMPT '--- Drop proc drop_object ---'
BEGIN 
    EXECUTE IMMEDIATE 'drop procedure drop_object'; 
    EXCEPTION WHEN OTHERS THEN NULL;
END;
/

PROMPT '--- END of create user objects ---'
