create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table promoaction (id int8 generated by default as identity, description oid not null, name oid not null, participant_id int8 not null, prize_id int8 not null, primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists promoaction add constraint FKklq4qf9hhgxnp33sq31ttagb5 foreign key (participant_id) references participant;
alter table if exists promoaction add constraint FKibx01vnqsrwim4s16rl0wbcso foreign key (prize_id) references prizes;
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table promoaction (id int8 generated by default as identity, description oid not null, name oid not null, participant_id int8 not null, prize_id int8 not null, primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists promoaction add constraint FKklq4qf9hhgxnp33sq31ttagb5 foreign key (participant_id) references participant;
alter table if exists promoaction add constraint FKibx01vnqsrwim4s16rl0wbcso foreign key (prize_id) references prizes;
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table promoaction (id int8 generated by default as identity, description oid not null, name oid not null, participant_id int8 not null, prize_id int8 not null, primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists promoaction add constraint FKklq4qf9hhgxnp33sq31ttagb5 foreign key (participant_id) references participant;
alter table if exists promoaction add constraint FKibx01vnqsrwim4s16rl0wbcso foreign key (prize_id) references prizes;
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table promoaction (id int8 generated by default as identity, description oid not null, name oid not null, participant_id int8 not null, prize_id int8 not null, primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists promoaction add constraint FKklq4qf9hhgxnp33sq31ttagb5 foreign key (participant_id) references participant;
alter table if exists promoaction add constraint FKibx01vnqsrwim4s16rl0wbcso foreign key (prize_id) references prizes;
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table promoaction (id int8 generated by default as identity, description oid not null, name oid not null, participant_id int8 not null, prize_id int8 not null, primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists promoaction add constraint FKklq4qf9hhgxnp33sq31ttagb5 foreign key (participant_id) references participant;
alter table if exists promoaction add constraint FKibx01vnqsrwim4s16rl0wbcso foreign key (prize_id) references prizes;
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table promoaction (id int8 generated by default as identity, description oid not null, name oid not null, participant_id int8 not null, prize_id int8 not null, primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists promoaction add constraint FKklq4qf9hhgxnp33sq31ttagb5 foreign key (participant_id) references participant;
alter table if exists promoaction add constraint FKibx01vnqsrwim4s16rl0wbcso foreign key (prize_id) references prizes;
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bytea, user_id bytea, primary key (id));
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bytea, user_id bytea, primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
create table participant (id int8 generated by default as identity, name oid not null, primary key (id));
create table prizes (id int8 generated by default as identity, description oid not null, primary key (id));
create table "promoaction" (id int8 generated by default as identity, description oid, name oid not null, prize_id bigint[], user_id bigint[], primary key (id));
create table results (id int8 generated by default as identity, prize_id int8 not null, winner_id int8 not null, primary key (id));
alter table if exists results add constraint FK81akjbcu7e10hj3h2cwe1pobe foreign key (prize_id) references prizes;
alter table if exists results add constraint FKag3cgtn978sqxoi2lvq045shu foreign key (winner_id) references participant;
