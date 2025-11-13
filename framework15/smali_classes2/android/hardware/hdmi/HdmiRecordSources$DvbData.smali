.class public final Landroid/hardware/hdmi/HdmiRecordSources$DvbData;
.super Ljava/lang/Object;
.source "HdmiRecordSources.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DvbData"
.end annotation


# instance fields
.field private final greylist-max-o mOriginalNetworkId:I

.field private final greylist-max-o mServiceId:I

.field private final greylist-max-o mTransportStreamId:I


# direct methods
.method public constructor greylist-max-o <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mTransportStreamId:I

    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mServiceId:I

    iput p3, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mOriginalNetworkId:I

    return-void
.end method


# virtual methods
.method public greylist-max-o toByteArray([BI)I
    .locals 3

    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mTransportStreamId:I

    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mServiceId:I

    iget v2, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mOriginalNetworkId:I

    invoke-static {v0, v1, v2, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->-$$Nest$smthreeFieldsToSixBytes(III[BI)I

    move-result v0

    return v0
.end method
