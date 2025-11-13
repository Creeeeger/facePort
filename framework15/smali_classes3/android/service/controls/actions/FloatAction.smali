.class public final Landroid/service/controls/actions/FloatAction;
.super Landroid/service/controls/actions/ControlAction;
.source "FloatAction.java"


# static fields
.field private static final blacklist KEY_NEW_VALUE:Ljava/lang/String; = "key_new_value"

.field private static final blacklist TYPE:I = 0x2


# instance fields
.field private final blacklist mNewValue:F


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/service/controls/actions/ControlAction;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v0, "key_new_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/service/controls/actions/FloatAction;->mNewValue:F

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/service/controls/actions/FloatAction;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;FLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Landroid/service/controls/actions/ControlAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Landroid/service/controls/actions/FloatAction;->mNewValue:F

    return-void
.end method


# virtual methods
.method public whitelist getActionType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method blacklist getDataBundle()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/service/controls/actions/ControlAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key_new_value"

    iget v2, p0, Landroid/service/controls/actions/FloatAction;->mNewValue:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public whitelist getNewValue()F
    .locals 1

    iget v0, p0, Landroid/service/controls/actions/FloatAction;->mNewValue:F

    return v0
.end method
