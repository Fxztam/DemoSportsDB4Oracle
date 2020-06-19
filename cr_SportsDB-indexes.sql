
--
-- Name: idx_addresses_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_addresses_1 ON addresses (locality);


--
-- Name: idx_addresses_2; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_addresses_2 ON addresses (region);


--
-- Name: idx_addresses_3; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_addresses_3 ON addresses (postal_code);


--
-- Name: idx_affiliations_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_affiliations_1 ON affiliations (affiliation_key);


--
-- Name: idx_affiliations_2; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_affiliations_2 ON affiliations (affiliation_type);


--
-- Name: idx_american_football_action_participants_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_american_football_action_participants_1 ON american_football_action_participants (participant_role);


--
-- Name: idx_american_football_action_participants_2; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_american_football_action_participants_2 ON american_football_action_participants (score_type);


--
-- Name: idx_american_football_action_plays_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_american_football_action_plays_1 ON american_football_action_plays (play_type);


--
-- Name: idx_american_football_action_plays_2; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_american_football_action_plays_2 ON american_football_action_plays (score_attempt_type);


--
-- Name: idx_american_football_action_plays_3; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_american_football_action_plays_3 ON american_football_action_plays (drive_result);


--
-- Name: idx_american_football_event_states_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_american_football_event_states_1 ON american_football_event_states (current_state);


--
-- Name: idx_baseball_action_pitches_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_baseball_action_pitches_1 ON baseball_action_pitches (umpire_call);


--
-- Name: idx_baseball_action_pitches_2; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_baseball_action_pitches_2 ON baseball_action_pitches (pitch_type);


--
-- Name: idx_baseball_action_plays_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_baseball_action_plays_1 ON baseball_action_plays (play_type);


--
-- Name: idx_baseball_event_states_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_baseball_event_states_1 ON baseball_event_states (current_state);


--
-- Name: idx_db_info_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_db_info_1 ON db_info (version);


--
-- Name: idx_document_classes_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_document_classes_1 ON document_classes (name);


--
-- Name: idx_document_fixtures_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_document_fixtures_1 ON document_fixtures (fixture_key);


--
-- Name: idx_documents_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_documents_1 ON documents (doc_id);


--
-- Name: idx_documents_3; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_documents_3 ON documents (date_time);


--
-- Name: idx_documents_4; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_documents_4 ON documents (priority);


--
-- Name: idx_documents_5; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_documents_5 ON documents (revision_id);


--
-- Name: idx_events_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_events_1 ON events (event_key);


--
-- Name: idx_fk_add_loc_id__loc_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_add_loc_id__loc_id ON addresses (location_id);


--
-- Name: idx_fk_aff_pub_id__pub_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_aff_pub_id__pub_id ON affiliations (publisher_id);


--
-- Name: idx_fk_ame_foo_act_par_ame_foo_act_pla_id__ame_foo_act_pla_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_ame_foo_act_par_ame_foo_act_pla_id__ame_foo_act_pla_id ON american_football_action_participants (american_football_action_play_id);


--
-- Name: idx_fk_ame_foo_act_par_per_id__per_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_ame_foo_act_par_per_id__per_id ON american_football_action_participants (person_id);


--
-- Name: idx_fk_ame_foo_act_pla_ame_foo_eve_sta_id__ame_foo_eve_sta_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_ame_foo_act_pla_ame_foo_eve_sta_id__ame_foo_eve_sta_id ON american_football_action_plays (american_football_event_state_id);


--
-- Name: idx_fk_ame_foo_eve_sta_eve_id__eve_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_ame_foo_eve_sta_eve_id__eve_id ON american_football_event_states (event_id);


--
-- Name: idx_fk_bas_act_pit_bas_def_gro_id__bas_def_gro_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_bas_act_pit_bas_def_gro_id__bas_def_gro_id ON baseball_action_pitches (baseball_defensive_group_id);


--
-- Name: idx_fk_bas_act_pla_bas_eve_sta_id__bas_eve_sta_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_bas_act_pla_bas_eve_sta_id__bas_eve_sta_id ON baseball_action_plays (baseball_event_state_id);


--
-- Name: idx_fk_bas_eve_sta_eve_id__eve_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_bas_eve_sta_eve_id__eve_id ON baseball_event_states (event_id);


--
-- Name: idx_fk_doc_con_doc_id__doc_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_doc_con_doc_id__doc_id ON document_contents (document_id);


--
-- Name: idx_fk_doc_doc_fix_id__doc_fix_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_doc_doc_fix_id__doc_fix_id ON documents (document_fixture_id);


--
-- Name: idx_fk_doc_fix_doc_cla_id__doc_cla_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_doc_fix_doc_cla_id__doc_cla_id ON document_fixtures (document_class_id);


--
-- Name: idx_fk_doc_fix_eve_doc_fix_id__doc_fix_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_doc_fix_eve_doc_fix_id__doc_fix_id ON document_fixtures_events (document_fixture_id);


--
-- Name: idx_fk_doc_fix_eve_eve_id__eve_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_doc_fix_eve_eve_id__eve_id ON document_fixtures_events (event_id);


--
-- Name: idx_fk_doc_fix_eve_lat_doc_id__doc_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_doc_fix_eve_lat_doc_id__doc_id ON document_fixtures_events (latest_document_id);


--
-- Name: idx_fk_doc_fix_pub_id__pub_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_doc_fix_pub_id__pub_id ON document_fixtures (publisher_id);


--
-- Name: idx_fk_doc_pub_id__pub_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_doc_pub_id__pub_id ON documents (publisher_id);


--
-- Name: idx_fk_doc_sou_id__pub_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_doc_sou_id__pub_id ON documents (source_id);


--
-- Name: idx_fk_eve_pub_id__pub_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_eve_pub_id__pub_id ON events (publisher_id);


--
-- Name: idx_fk_eve_sit_id__sit_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_eve_sit_id__sit_id ON events (site_id);


--
-- Name: idx_fk_events_basketball_event_states; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_events_basketball_event_states ON basketball_event_states (event_id);


--
-- Name: idx_fk_events_motor_racing_event_states; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_events_motor_racing_event_states ON motor_racing_event_states (event_id);


--
-- Name: idx_fk_events_soccer_event_states; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_events_soccer_event_states ON soccer_event_states (event_id);


--
-- Name: idx_fk_events_tennis_event_states; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_events_tennis_event_states ON tennis_event_states (event_id);


--
-- Name: idx_fk_inj_pha_per_id__per_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_inj_pha_per_id__per_id ON injury_phases (person_id);


--
-- Name: idx_fk_inj_pha_sea_id__sea_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_inj_pha_sea_id__sea_id ON injury_phases (season_id);


--
-- Name: idx_fk_lat_rev_lat_doc_id__doc_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_lat_rev_lat_doc_id__doc_id ON latest_revisions (latest_document_id);


--
-- Name: idx_fk_par_eve_eve_id__eve_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_par_eve_eve_id__eve_id ON participants_events (event_id);


--
-- Name: idx_fk_per_eve_met_eve_id__eve_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_per_eve_met_eve_id__eve_id ON person_event_metadata (event_id);


--
-- Name: idx_fk_per_eve_met_per_id__per_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_per_eve_met_per_id__per_id ON person_event_metadata (person_id);


--
-- Name: idx_fk_per_eve_met_pos_id__pos_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_per_eve_met_pos_id__pos_id ON person_event_metadata (position_id);


--
-- Name: idx_fk_per_eve_met_rol_id__rol_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_per_eve_met_rol_id__rol_id ON person_event_metadata (role_id);


--
-- Name: idx_fk_per_par_eve_id__par_eve_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_per_par_eve_id__par_eve_id ON periods (participant_event_id);


--
-- Name: idx_fk_per_pha_per_id__per_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_per_pha_per_id__per_id ON person_phases (person_id);


--
-- Name: idx_fk_per_pha_reg_pos_id__pos_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_per_pha_reg_pos_id__pos_id ON person_phases (regular_position_id);


--
-- Name: idx_fk_per_pub_id__pub_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_per_pub_id__pub_id ON persons (publisher_id);


--
-- Name: idx_fk_pos_aff_id__aff_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_pos_aff_id__aff_id ON positions (affiliation_id);


--
-- Name: idx_fk_sea_lea_id__aff_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_sea_lea_id__aff_id ON seasons (league_id);


--
-- Name: idx_fk_sea_pub_id__pub_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_sea_pub_id__pub_id ON seasons (publisher_id);


--
-- Name: idx_fk_sit_loc_id__loc_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_sit_loc_id__loc_id ON sites (location_id);


--
-- Name: idx_fk_sit_pub_id__pub_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_sit_pub_id__pub_id ON sites (publisher_id);


--
-- Name: idx_fk_sub_per_per_id__per_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_sub_per_per_id__per_id ON sub_periods (period_id);


--
-- Name: idx_fk_sub_sea_sea_id__sea_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_sub_sea_sea_id__sea_id ON sub_seasons (season_id);


--
-- Name: idx_fk_teams_person_event_metadata; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_teams_person_event_metadata ON person_event_metadata (team_id);


--
-- Name: idx_fk_wea_con_eve_id__eve_id; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_fk_wea_con_eve_id__eve_id ON weather_conditions (event_id);


--
-- Name: idx_injury_phases_2; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_injury_phases_2 ON injury_phases (injury_status);


--
-- Name: idx_injury_phases_3; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_injury_phases_3 ON injury_phases (start_date_time);


--
-- Name: idx_injury_phases_4; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_injury_phases_4 ON injury_phases (end_date_time);


--
-- Name: idx_key_aliases_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_key_aliases_1 ON key_roots (key_type);


--
-- Name: idx_key_aliases_2; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_key_aliases_2 ON key_aliases (key_id);


--
-- Name: idx_latest_revisions_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_latest_revisions_1 ON latest_revisions (revision_id);


--
-- Name: idx_locations_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_locations_1 ON locations (country_code);


--
-- Name: idx_participants_events_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_participants_events_1 ON participants_events (participant_type);


--
-- Name: idx_participants_events_2; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_participants_events_2 ON participants_events (participant_id);


--
-- Name: idx_participants_events_3; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_participants_events_3 ON participants_events (alignment);


--
-- Name: idx_participants_events_4; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_participants_events_4 ON participants_events (event_outcome);


--
-- Name: idx_person_event_metadata_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_person_event_metadata_1 ON person_event_metadata (status);


--
-- Name: idx_person_phases_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_person_phases_1 ON person_phases (membership_type);


--
-- Name: idx_person_phases_2; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_person_phases_2 ON person_phases (membership_id);


--
-- Name: idx_person_phases_3; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_person_phases_3 ON person_phases (phase_status);


--
-- Name: idx_persons_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_persons_1 ON persons (person_key);


--
-- Name: idx_positions_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_positions_1 ON positions (abbreviation);


--
-- Name: idx_publishers_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_publishers_1 ON publishers (publisher_key);


--
-- Name: idx_roles_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_roles_1 ON roles (role_key);


--
-- Name: idx_seasons_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_seasons_1 ON seasons (season_key);


--
-- Name: idx_sites_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_sites_1 ON sites (site_key);


--
-- Name: idx_stats_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_stats_1 ON stats (stat_repository_type);


--
-- Name: idx_stats_2; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_stats_2 ON stats (stat_repository_id);


--
-- Name: idx_stats_3; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_stats_3 ON stats (stat_holder_type);


--
-- Name: idx_stats_4; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_stats_4 ON stats (stat_holder_id);


--
-- Name: idx_stats_5; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_stats_5 ON stats (stat_coverage_type);


--
-- Name: idx_stats_6; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_stats_6 ON stats (stat_coverage_id);


--
-- Name: idx_stats_7; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_stats_7 ON stats (context);


--
-- Name: idx_sub_seasons_1; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_sub_seasons_1 ON sub_seasons (sub_season_key);


--
-- Name: idx_sub_seasons_2; Type: INDEX; Schema: public; Owner: postgres81; Tablespace: 
--

CREATE INDEX idx_sub_seasons_2 ON sub_seasons (sub_season_type);

