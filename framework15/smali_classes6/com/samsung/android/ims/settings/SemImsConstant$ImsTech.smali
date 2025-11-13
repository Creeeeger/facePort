.class public Lcom/samsung/android/ims/settings/SemImsConstant$ImsTech;
.super Ljava/lang/Object;
.source "SemImsConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/settings/SemImsConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsTech"
.end annotation


# static fields
.field public static final blacklist SERVICE_CDPN:Ljava/lang/String; = "cdpn"

.field public static final blacklist SERVICE_MMTEL_VOICE:Ljava/lang/String; = "mmtel"

.field public static final blacklist SERVICE_MMTEL_VOICE_VIDEO:Ljava/lang/String; = "mmtel-video"

.field public static final blacklist SERVICE_SMSIP:Ljava/lang/String; = "smsip"

.field public static final blacklist SERVICE_SS:Ljava/lang/String; = "ss"

.field public static final blacklist VOLTE_SERVICE:Ljava/lang/String; = "volte"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
