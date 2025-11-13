.class public interface abstract Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;
.super Ljava/lang/Object;
.source "AvailableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/AvailableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnEventListener"
.end annotation


# virtual methods
.method public abstract onConnect(Lcom/android/wifitrackerlib/WifiEntry;)V
.end method

.method public abstract onForget(Lcom/android/wifitrackerlib/WifiEntry;)V
.end method

.method public abstract onItemClicked(Lcom/android/wifitrackerlib/WifiEntry;)V
.end method

.method public abstract onLaunchActivity()V
.end method

.method public abstract onLaunchActivityFinished()V
.end method
