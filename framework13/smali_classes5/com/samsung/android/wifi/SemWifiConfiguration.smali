.class public Lcom/samsung/android/wifi/SemWifiConfiguration;
.super Ljava/lang/Object;
.source "SemWifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiConfiguration$SemNetworkDisableReason;
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DISABLED_ASSOCIATION_REJECTED:I = 0x3

.field public static final blacklist DISABLED_AUTHENTICATION_CA_CERTIFICATION_ERROR:I = 0xb

.field public static final blacklist DISABLED_AUTHENTICATION_FAILURE:I = 0x2

.field public static final blacklist DISABLED_CAPTIVE_PORTAL:I = 0x5

.field public static final blacklist DISABLED_DHCP_FAILED:I = 0x4

.field public static final blacklist DISABLED_NONE:I = 0x0

.field public static final blacklist DISABLED_PERMANENTLY_NO_INTERNET:I = 0x7

.field public static final blacklist DISABLED_PERMANENTLY_NO_INTERNET_INITIAL:I = 0x8

.field public static final blacklist DISABLED_REASON_MAX:I = 0xc

.field public static final blacklist DISABLED_SUSPICIOUS_NETWORK:I = 0x1

.field public static final blacklist DISABLED_TEMPORARY_ELE_DETECTION:I = 0x9

.field public static final blacklist DISABLED_TEMPORARY_NO_INTERNET:I = 0x6

.field public static final blacklist DISABLED_TEMPORARY_SILENT_ROAMING:I = 0xa

.field public static final blacklist networkDisableReasonStrings:[Ljava/lang/String;


# instance fields
.field public blacklist altNetworkTargetRssi:I

.field public blacklist configKey:Ljava/lang/String;

.field public blacklist disableTimeByEle:J

.field public blacklist disableTimeByWcm:J

.field public blacklist isCaptivePortal:Z

.field public blacklist isLockDown:Z

.field public blacklist isNoInternetAccessExpected:Z

.field public blacklist networkDisableReason:I

.field public blacklist networkScore:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 12

    .line 162
    const-string v0, "DISABLED_NONE"

    const-string v1, "DISABLED_SUSPICIOUS_NETWORK"

    const-string v2, "DISABLED_AUTHENTICATION_FAILURE"

    const-string v3, "DISABLED_ASSOCIATION_REJECTED"

    const-string v4, "DISABLED_DHCP_FAILED"

    const-string v5, "DISABLED_CAPTIVE_PORTAL"

    const-string v6, "DISABLED_TEMPORARY_NO_INTERNET"

    const-string v7, "DISABLED_PERMANENTLY_NO_INTERNET"

    const-string v8, "DISABLED_PERMANENTLY_NO_INTERNET_INITIAL"

    const-string v9, "DISABLED_TEMPORARY_ELE_DETECTION"

    const-string v10, "DISABLED_TEMPORARY_SILENT_ROAMING"

    const-string v11, "DISABLED_AUTHENTICATION_CA_CERTIFICATION_ERROR"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReasonStrings:[Ljava/lang/String;

    .line 342
    new-instance v0, Lcom/samsung/android/wifi/SemWifiConfiguration$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiConfiguration$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .locals 2
    .param p1, "source"    # Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iget-object v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 318
    iget v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 319
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 320
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 321
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 322
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    .line 323
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    .line 324
    iget v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    .line 325
    iget v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 326
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "configKey"    # Ljava/lang/String;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 205
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 206
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 207
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 208
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    .line 209
    iput-wide v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    .line 210
    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    .line 211
    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 212
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 294
    instance-of v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 295
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 296
    .local v0, "other":Lcom/samsung/android/wifi/SemWifiConfiguration;
    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiConfiguration;->matches(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    return v1

    .line 298
    :cond_0
    iget v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    iget v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    if-eq v2, v3, :cond_1

    .line 299
    return v1

    .line 300
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    iget-boolean v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    if-eq v2, v3, :cond_2

    .line 301
    return v1

    .line 302
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    iget-boolean v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-eq v2, v3, :cond_3

    .line 303
    return v1

    .line 304
    :cond_3
    iget v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    iget v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-eq v2, v3, :cond_4

    .line 305
    return v1

    .line 307
    :cond_4
    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    iget-boolean v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    .line 309
    .end local v0    # "other":Lcom/samsung/android/wifi/SemWifiConfiguration;
    :cond_6
    return v1
.end method

.method public blacklist getNetworkScore()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isCaptivePortal()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    return v0
.end method

.method public blacklist isLockDown()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    return v0
.end method

.method public blacklist isNoInternetAccessExpected()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    return v0
.end method

.method public blacklist matches(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .locals 2
    .param p1, "other"    # Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 257
    if-nez p1, :cond_0

    .line 258
    const/4 v0, 0x0

    return v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-boolean v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    if-eqz v1, :cond_0

    .line 268
    const-string v1, " locked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    if-eqz v1, :cond_1

    .line 271
    const-string v1, " captivePortal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-eqz v1, :cond_2

    .line 274
    const-string v1, " NoInternetAccessExpected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_2
    iget v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-ltz v1, :cond_5

    const/16 v3, 0xc

    if-ge v1, v3, :cond_5

    .line 277
    const-string v1, " disableReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReasonStrings:[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    aget-object v3, v3, v4

    .line 278
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-wide v3, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    const-string v1, " disableTimeByWcm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 280
    :cond_3
    iget-wide v3, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    const-string v1, " disableTimeByEle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 281
    :cond_4
    iget v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    if-eqz v1, :cond_5

    const-string v1, " altNetworkTargetRssi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    :cond_5
    const-string v1, " networkScore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 330
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 333
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 334
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 335
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 336
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 337
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    return-void
.end method
