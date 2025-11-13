.class final Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;
.super Landroid/app/IUnsafeIntentStrictModeCallback$Stub;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeIntentStrictModeCallback"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/IUnsafeIntentStrictModeCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/StrictMode$UnsafeIntentStrictModeCallback-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onUnsafeIntent(ILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/os/StrictMode;->-$$Nest$smonUnsafeIntentLaunch(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
