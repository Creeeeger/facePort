.class public final synthetic Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/UiModeManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/UiModeManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController$$ExternalSyntheticLambda0;->f$0:Landroid/app/UiModeManager;

    iput p2, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController$$ExternalSyntheticLambda0;->f$0:Landroid/app/UiModeManager;

    iget p0, p0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;->$r8$lambda$vFQMBrPZXQ2uJ2htl2Z5v2npJIg(Landroid/app/UiModeManager;I)V

    return-void
.end method
