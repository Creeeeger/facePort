.class public Landroid/telephony/TelephonyManager$ModemActivityInfoException;
.super Ljava/lang/Exception;
.source "TelephonyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModemActivityInfoException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$ModemActivityInfoException$ModemActivityInfoError;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_INVALID_INFO_RECEIVED:I = 0x2

.field public static final whitelist ERROR_MODEM_RESPONSE_ERROR:I = 0x3

.field public static final whitelist ERROR_PHONE_NOT_AVAILABLE:I = 0x1

.field public static final whitelist ERROR_UNKNOWN:I


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNDEFINED"

    return-object v0

    :pswitch_0
    const-string v0, "ERROR_MODEM_RESPONSE_ERROR"

    return-object v0

    :pswitch_1
    const-string v0, "ERROR_INVALID_INFO_RECEIVED"

    return-object v0

    :pswitch_2
    const-string v0, "ERROR_PHONE_NOT_AVAILABLE"

    return-object v0

    :pswitch_3
    const-string v0, "ERROR_UNKNOWN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
