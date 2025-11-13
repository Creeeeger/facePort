.class Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;
.super Landroid/database/ContentObserver;
.source "TopLevelSamsungAccountPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentObserverImpl"
.end annotation


# instance fields
.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 204
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;->mUpdateHandler:Landroid/os/Handler;

    .line 205
    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 210
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 211
    iget-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;->mUpdateHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;->mUpdateRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    iget-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;->mUpdateHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelSamsungAccountPreferenceController$ContentObserverImpl;->mUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
