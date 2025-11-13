.class public Landroid/service/notification/ZenModeDiff$RuleDiff;
.super Landroid/service/notification/ZenModeDiff$BaseDiff;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RuleDiff"
.end annotation


# static fields
.field public static final blacklist FIELD_ALLOW_MANUAL:Ljava/lang/String; = "allowManualInvocation"

.field public static final blacklist FIELD_COMPONENT:Ljava/lang/String; = "component"

.field public static final blacklist FIELD_CONDITION:Ljava/lang/String; = "condition"

.field public static final blacklist FIELD_CONDITION_ID:Ljava/lang/String; = "conditionId"

.field public static final blacklist FIELD_CONFIGURATION_ACTIVITY:Ljava/lang/String; = "configurationActivity"

.field public static final blacklist FIELD_CREATION_TIME:Ljava/lang/String; = "creationTime"

.field public static final blacklist FIELD_ENABLED:Ljava/lang/String; = "enabled"

.field public static final blacklist FIELD_ENABLER:Ljava/lang/String; = "enabler"

.field public static final blacklist FIELD_ICON_RES:Ljava/lang/String; = "iconResName"

.field public static final blacklist FIELD_ID:Ljava/lang/String; = "id"

.field public static final blacklist FIELD_MODIFIED:Ljava/lang/String; = "modified"

.field public static final blacklist FIELD_NAME:Ljava/lang/String; = "name"

.field public static final blacklist FIELD_PKG:Ljava/lang/String; = "pkg"

.field public static final blacklist FIELD_SNOOZING:Ljava/lang/String; = "snoozing"

.field public static final blacklist FIELD_TRIGGER_DESCRIPTION:Ljava/lang/String; = "triggerDescription"

.field public static final blacklist FIELD_TYPE:Ljava/lang/String; = "type"

.field public static final blacklist FIELD_ZEN_DEVICE_EFFECTS:Ljava/lang/String; = "zenDeviceEffects"

.field public static final blacklist FIELD_ZEN_MODE:Ljava/lang/String; = "zenMode"

.field public static final blacklist FIELD_ZEN_POLICY:Ljava/lang/String; = "zenPolicy"


# instance fields
.field blacklist mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/service/notification/ZenModeDiff$FieldDiff<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/service/notification/ZenModeDiff$BaseDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v0

    :cond_2
    if-eq v1, v0, :cond_3

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    :cond_3
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasExistenceChange()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-boolean v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eq v2, v3, :cond_5

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "enabled"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_5
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    iget-boolean v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eq v2, v3, :cond_6

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "snoozing"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_6
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "name"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_7
    iget v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iget v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eq v2, v3, :cond_8

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "zenMode"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_8
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "conditionId"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_9
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "condition"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_a
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "component"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_b
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "configurationActivity"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_c
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "id"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_d
    iget-wide v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    iget-wide v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-wide v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "creationTime"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_e
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "enabler"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_f
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "zenPolicy"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_10
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    iget-boolean v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    if-eq v2, v3, :cond_11

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "modified"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_11
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "pkg"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_12
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "zenDeviceEffects"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_13
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "triggerDescription"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_14
    iget v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    iget v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    if-eq v2, v3, :cond_15

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "type"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_15
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    iget-boolean v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    if-eq v2, v3, :cond_16

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "allowManualInvocation"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_16
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "iconResName"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public blacklist becameActive()Z
    .locals 1

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$FieldDiff;->to()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist becameInactive()Z
    .locals 1

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$FieldDiff;->to()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasDiff()Z
    .locals 1

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasExistenceChange()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasFieldDiffs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZenRuleDiff{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "no changes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasExistenceChange()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "added"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->fieldNamesWithDiff()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/service/notification/ZenModeDiff$RuleDiff;->getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameActive()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v1, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v2, "(->active)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameInactive()Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v1, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v2, "(->inactive)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_3
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
