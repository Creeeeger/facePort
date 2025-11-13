.class public Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;
.super Ljava/lang/Object;
.source "SemMobileWipsScanResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemMobileWipsScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnqpInformationElement"
.end annotation


# static fields
.field public static final blacklist ANQP_3GPP_NETWORK:I = 0x108

.field public static final blacklist ANQP_CAPABILITY_LIST:I = 0x101

.field public static final blacklist ANQP_CIVIC_LOC:I = 0x10a

.field public static final blacklist ANQP_DOM_NAME:I = 0x10c

.field public static final blacklist ANQP_EMERGENCY_ALERT:I = 0x10d

.field public static final blacklist ANQP_EMERGENCY_NAI:I = 0x10f

.field public static final blacklist ANQP_EMERGENCY_NUMBER:I = 0x103

.field public static final blacklist ANQP_GEO_LOC:I = 0x109

.field public static final blacklist ANQP_IP_ADDR_AVAILABILITY:I = 0x106

.field public static final blacklist ANQP_LOC_URI:I = 0x10b

.field public static final blacklist ANQP_NAI_REALM:I = 0x107

.field public static final blacklist ANQP_NEIGHBOR_REPORT:I = 0x110

.field public static final blacklist ANQP_NWK_AUTH_TYPE:I = 0x104

.field public static final blacklist ANQP_QUERY_LIST:I = 0x100

.field public static final blacklist ANQP_ROAMING_CONSORTIUM:I = 0x105

.field public static final blacklist ANQP_TDLS_CAP:I = 0x10e

.field public static final blacklist ANQP_VENDOR_SPEC:I = 0xdddd

.field public static final blacklist ANQP_VENUE_NAME:I = 0x102

.field public static final blacklist HOTSPOT20_VENDOR_ID:I = 0x506f9a

.field public static final blacklist HS_CAPABILITY_LIST:I = 0x2

.field public static final blacklist HS_CONN_CAPABILITY:I = 0x5

.field public static final blacklist HS_FRIENDLY_NAME:I = 0x3

.field public static final blacklist HS_ICON_FILE:I = 0xb

.field public static final blacklist HS_ICON_REQUEST:I = 0xa

.field public static final blacklist HS_NAI_HOME_REALM_QUERY:I = 0x6

.field public static final blacklist HS_OPERATING_CLASS:I = 0x7

.field public static final blacklist HS_OSU_PROVIDERS:I = 0x8

.field public static final blacklist HS_QUERY_LIST:I = 0x1

.field public static final blacklist HS_WAN_METRICS:I = 0x4


# instance fields
.field private final blacklist mElementId:I

.field private final blacklist mPayload:[B

.field private final blacklist mVendorId:I


# direct methods
.method public constructor blacklist <init>(II[B)V
    .locals 0
    .param p1, "vendorId"    # I
    .param p2, "elementId"    # I
    .param p3, "payload"    # [B

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;->mVendorId:I

    .line 849
    iput p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;->mElementId:I

    .line 850
    iput-object p3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;->mPayload:[B

    .line 851
    return-void
.end method


# virtual methods
.method public blacklist getElementId()I
    .locals 1

    .line 858
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;->mElementId:I

    return v0
.end method

.method public blacklist getPayload()[B
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;->mPayload:[B

    return-object v0
.end method

.method public blacklist getVendorId()I
    .locals 1

    .line 854
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;->mVendorId:I

    return v0
.end method
