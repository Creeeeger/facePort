.class public interface abstract Lcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;
.super Ljava/lang/Object;
.source "SavedScannedTracker.java"

# interfaces
.implements Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifitrackerlib/SavedScannedTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SavedScannedTrackerCallback"
.end annotation


# virtual methods
.method public abstract onSavedWifiEntriesChanged()V
.end method

.method public abstract onSubscriptionWifiEntriesChanged()V
.end method
