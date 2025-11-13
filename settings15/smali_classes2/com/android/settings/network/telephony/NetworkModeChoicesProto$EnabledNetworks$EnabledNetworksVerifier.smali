.class public final Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# static fields
.field public static final INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;

.field public static final INSTANCE$1:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;->INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;

    new-instance v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;->INSTANCE$1:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 0

    iget p0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks$EnabledNetworksVerifier;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->forNumber(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->forNumber(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
