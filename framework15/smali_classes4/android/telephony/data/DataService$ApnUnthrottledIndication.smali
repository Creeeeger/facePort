.class final Landroid/telephony/data/DataService$ApnUnthrottledIndication;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApnUnthrottledIndication"
.end annotation


# instance fields
.field public final blacklist apn:Ljava/lang/String;

.field public final blacklist callback:Landroid/telephony/data/IDataServiceCallback;

.field public final blacklist dataProfile:Landroid/telephony/data/DataProfile;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/data/DataProfile;Landroid/telephony/data/IDataServiceCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->apn:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Landroid/telephony/data/IDataServiceCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    iput-object p1, p0, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->apn:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    return-void
.end method
