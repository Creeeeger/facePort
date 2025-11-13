.class Lcom/kddi/android/CpaNotiReceiver$NaviSettings;
.super Ljava/lang/Object;
.source "CpaNotiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/CpaNotiReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NaviSettings"
.end annotation


# instance fields
.field public blacklist apn:Ljava/lang/String;

.field public blacklist authType:I

.field public blacklist dns1:Ljava/lang/String;

.field public blacklist dns2:Ljava/lang/String;

.field public blacklist password:Ljava/lang/String;

.field public blacklist proxyHost:Ljava/lang/String;

.field public blacklist proxyPort:Ljava/lang/String;

.field public blacklist userId:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/kddi/android/CpaNotiReceiver$NaviSettings-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;-><init>()V

    return-void
.end method
