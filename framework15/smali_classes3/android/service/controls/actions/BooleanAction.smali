.class public final Landroid/service/controls/actions/BooleanAction;
.super Landroid/service/controls/actions/ControlAction;
.source "BooleanAction.java"


# static fields
.field private static final blacklist KEY_NEW_STATE:Ljava/lang/String; = "key_new_state"

.field private static final blacklist TYPE:I = 0x1


# instance fields
.field private final blacklist mNewState:Z


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/service/controls/actions/ControlAction;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v0, "key_new_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/actions/BooleanAction;->mNewState:Z

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/service/controls/actions/BooleanAction;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Landroid/service/controls/actions/ControlAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Landroid/service/controls/actions/BooleanAction;->mNewState:Z

    return-void
.end method


# virtual methods
.method public whitelist getActionType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method blacklist getDataBundle()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/service/controls/actions/ControlAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key_new_state"

    iget-boolean v2, p0, Landroid/service/controls/actions/BooleanAction;->mNewState:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public whitelist getNewState()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/controls/actions/BooleanAction;->mNewState:Z

    return v0
.end method
