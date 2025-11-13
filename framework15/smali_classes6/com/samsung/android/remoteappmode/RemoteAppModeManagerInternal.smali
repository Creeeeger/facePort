.class public abstract Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;
.super Ljava/lang/Object;
.source "RemoteAppModeManagerInternal.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onConfigurationChanged(Landroid/content/res/Configuration;I)V
.end method

.method public abstract blacklist onSecuredAppLaunched(ILjava/lang/String;)V
.end method

.method public abstract blacklist onSecuredAppRemoved(ILjava/lang/String;)V
.end method
