.class final Landroid/telephony/data/DataService$SetupDataCallRequest;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetupDataCallRequest"
.end annotation


# instance fields
.field public final greylist-max-o accessNetworkType:I

.field public final greylist-max-o allowRoaming:Z

.field public final greylist-max-o callback:Landroid/telephony/data/IDataServiceCallback;

.field public final greylist-max-o dataProfile:Landroid/telephony/data/DataProfile;

.field public final greylist-max-o isRoaming:Z

.field public final greylist-max-o linkProperties:Landroid/net/LinkProperties;

.field public final blacklist matchAllRuleAllowed:Z

.field public final blacklist pduSessionId:I

.field public final greylist-max-o reason:I

.field public final blacklist sliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field public final blacklist trafficDescriptor:Landroid/telephony/data/TrafficDescriptor;


# direct methods
.method constructor blacklist <init>(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->accessNetworkType:I

    iput-object p2, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iput-boolean p3, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->isRoaming:Z

    iput-boolean p4, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->allowRoaming:Z

    iput-object p6, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->linkProperties:Landroid/net/LinkProperties;

    iput p5, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->reason:I

    iput p7, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->pduSessionId:I

    iput-object p8, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->sliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    iput-object p9, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->trafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    iput-boolean p10, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->matchAllRuleAllowed:Z

    iput-object p11, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    return-void
.end method
