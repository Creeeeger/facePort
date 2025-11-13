.class public final synthetic Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/TaskOrganizer$1;

.field public final synthetic blacklist f$1:Landroid/content/pm/ActivityInfo;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/TaskOrganizer$1;Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;->f$0:Landroid/window/TaskOrganizer$1;

    iput-object p2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;->f$1:Landroid/content/pm/ActivityInfo;

    iput p3, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;->f$3:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;->f$0:Landroid/window/TaskOrganizer$1;

    iget-object v1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;->f$1:Landroid/content/pm/ActivityInfo;

    iget v2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;->f$2:I

    iget-object v3, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;->f$3:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1, v2, v3}, Landroid/window/TaskOrganizer$1;->lambda$preloadSplashScreenAppIcon$10$android-window-TaskOrganizer$1(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V

    return-void
.end method
