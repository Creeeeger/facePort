.class Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;
.super Ljava/lang/Object;
.source "SecDarkModeSetupWizardActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UiModeManagerAdapter"
.end annotation


# instance fields
.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/app/UiModeManager;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;->mUiModeManager:Landroid/app/UiModeManager;

    return-void
.end method


# virtual methods
.method public update(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    iget p1, p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->value:I

    if-ne v0, p1, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    return-void
.end method
