.class public Lcom/samsung/android/sepunion/ISmartMeetingObserverService$Default;
.super Ljava/lang/Object;
.source "ISmartMeetingObserverService.java"

# interfaces
.implements Lcom/samsung/android/sepunion/ISmartMeetingObserverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sepunion/ISmartMeetingObserverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
