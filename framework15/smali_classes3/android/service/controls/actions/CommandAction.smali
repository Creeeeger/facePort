.class public final Landroid/service/controls/actions/CommandAction;
.super Landroid/service/controls/actions/ControlAction;
.source "CommandAction.java"


# static fields
.field private static final blacklist TYPE:I = 0x5


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/controls/actions/ControlAction;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/service/controls/actions/CommandAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/controls/actions/ControlAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist getActionType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
