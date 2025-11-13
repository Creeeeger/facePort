.class public final Landroid/service/controls/templates/ToggleRangeTemplate;
.super Landroid/service/controls/templates/ControlTemplate;
.source "ToggleRangeTemplate.java"


# static fields
.field private static final blacklist KEY_BUTTON:Ljava/lang/String; = "key_button"

.field private static final blacklist KEY_RANGE:Ljava/lang/String; = "key_range"

.field private static final blacklist TYPE:I = 0x6


# instance fields
.field private final blacklist mControlButton:Landroid/service/controls/templates/ControlButton;

.field private final blacklist mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v0, "key_button"

    const-class v1, Landroid/service/controls/templates/ControlButton;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/controls/templates/ControlButton;

    iput-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    new-instance v0, Landroid/service/controls/templates/RangeTemplate;

    const-string/jumbo v1, "key_range"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/controls/templates/RangeTemplate;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/service/controls/templates/ControlButton;Landroid/service/controls/templates/RangeTemplate;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    iput-object p3, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ZLjava/lang/CharSequence;Landroid/service/controls/templates/RangeTemplate;)V
    .locals 1

    new-instance v0, Landroid/service/controls/templates/ControlButton;

    invoke-direct {v0, p2, p3}, Landroid/service/controls/templates/ControlButton;-><init>(ZLjava/lang/CharSequence;)V

    invoke-direct {p0, p1, v0, p4}, Landroid/service/controls/templates/ToggleRangeTemplate;-><init>(Ljava/lang/String;Landroid/service/controls/templates/ControlButton;Landroid/service/controls/templates/RangeTemplate;)V

    return-void
.end method


# virtual methods
.method public whitelist getActionDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    invoke-virtual {v0}, Landroid/service/controls/templates/ControlButton;->getActionDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getDataBundle()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/service/controls/templates/ControlTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key_button"

    iget-object v2, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    invoke-virtual {v1}, Landroid/service/controls/templates/RangeTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key_range"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public whitelist getRange()Landroid/service/controls/templates/RangeTemplate;
    .locals 1

    iget-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    return-object v0
.end method

.method public whitelist getTemplateType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public whitelist isChecked()Z
    .locals 1

    iget-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    invoke-virtual {v0}, Landroid/service/controls/templates/ControlButton;->isChecked()Z

    move-result v0

    return v0
.end method
