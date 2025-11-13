.class public final Landroid/service/controls/templates/ToggleTemplate;
.super Landroid/service/controls/templates/ControlTemplate;
.source "ToggleTemplate.java"


# static fields
.field private static final blacklist KEY_BUTTON:Ljava/lang/String; = "key_button"

.field private static final blacklist TYPE:I = 0x1


# instance fields
.field private final blacklist mButton:Landroid/service/controls/templates/ControlButton;


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v0, "key_button"

    const-class v1, Landroid/service/controls/templates/ControlButton;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/controls/templates/ControlButton;

    iput-object v0, p0, Landroid/service/controls/templates/ToggleTemplate;->mButton:Landroid/service/controls/templates/ControlButton;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/service/controls/templates/ControlButton;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Landroid/service/controls/templates/ToggleTemplate;->mButton:Landroid/service/controls/templates/ControlButton;

    return-void
.end method


# virtual methods
.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/controls/templates/ToggleTemplate;->mButton:Landroid/service/controls/templates/ControlButton;

    invoke-virtual {v0}, Landroid/service/controls/templates/ControlButton;->getActionDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getDataBundle()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/service/controls/templates/ControlTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key_button"

    iget-object v2, p0, Landroid/service/controls/templates/ToggleTemplate;->mButton:Landroid/service/controls/templates/ControlButton;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public whitelist getTemplateType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isChecked()Z
    .locals 1

    iget-object v0, p0, Landroid/service/controls/templates/ToggleTemplate;->mButton:Landroid/service/controls/templates/ControlButton;

    invoke-virtual {v0}, Landroid/service/controls/templates/ControlButton;->isChecked()Z

    move-result v0

    return v0
.end method
