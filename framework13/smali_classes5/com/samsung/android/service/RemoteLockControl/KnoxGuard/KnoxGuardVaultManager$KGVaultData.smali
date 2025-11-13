.class Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
.super Ljava/lang/Object;
.source "KnoxGuardVaultManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KGVaultData"
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x1b8ffafbd1fffc41L


# instance fields
.field private blacklist mClientData:Ljava/lang/String;

.field private blacklist mCustomerAppName:Ljava/lang/String;

.field private blacklist mCustomerAppPackageName:Ljava/lang/String;

.field private blacklist mEmailAddress:Ljava/lang/String;

.field private blacklist mFailureCount:I

.field private blacklist mNoticeMessage:Ljava/lang/String;

.field private blacklist mOTPCount:I

.field private blacklist mOTPKey:Ljava/lang/String;

.field private blacklist mPhoneNumber:Ljava/lang/String;

.field private blacklist mRequesterName:Ljava/lang/String;

.field private blacklist mSkipPin:Z

.field private blacklist mSkipSupport:Z


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "failureCount"    # I
    .param p2, "noticeMessage"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "emailAddress"    # Ljava/lang/String;
    .param p5, "requesterName"    # Ljava/lang/String;
    .param p6, "clientData"    # Ljava/lang/String;

    .line 1991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1992
    iput p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mFailureCount:I

    .line 1993
    iput-object p2, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mNoticeMessage:Ljava/lang/String;

    .line 1994
    iput-object p6, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mClientData:Ljava/lang/String;

    .line 1995
    iput-object p5, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mRequesterName:Ljava/lang/String;

    .line 1996
    iput-object p3, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mPhoneNumber:Ljava/lang/String;

    .line 1997
    iput-object p4, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mEmailAddress:Ljava/lang/String;

    .line 1998
    return-void
.end method


# virtual methods
.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 3

    .line 2002
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2003
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mCustomerAppPackageName:Ljava/lang/String;

    const-string v2, "customer_package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2004
    iget-object v1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mCustomerAppName:Ljava/lang/String;

    const-string v2, "customer_app_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2005
    return-object v0
.end method

.method public blacklist getClientData()Ljava/lang/String;
    .locals 1

    .line 2112
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mClientData:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEmailAddress()Ljava/lang/String;
    .locals 1

    .line 2122
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFailureCount()I
    .locals 1

    .line 2072
    iget v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mFailureCount:I

    return v0
.end method

.method public blacklist getNoticeMessage()Ljava/lang/String;
    .locals 1

    .line 2082
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mNoticeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOtpCount()I
    .locals 1

    .line 2062
    iget v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mOTPCount:I

    return v0
.end method

.method public blacklist getOtpKey()Ljava/lang/String;
    .locals 1

    .line 2052
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mOTPKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 2092
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequesterName()Ljava/lang/String;
    .locals 1

    .line 2102
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mRequesterName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSkipPin()Z
    .locals 1

    .line 2042
    iget-boolean v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mSkipPin:Z

    return v0
.end method

.method public blacklist getSkipSupport()Z
    .locals 1

    .line 2032
    iget-boolean v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mSkipSupport:Z

    return v0
.end method

.method public blacklist setBundle(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2010
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2011
    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mCustomerAppPackageName:Ljava/lang/String;

    .line 2012
    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mCustomerAppName:Ljava/lang/String;

    .line 2013
    return-void

    .line 2016
    :cond_0
    const-string v1, "customer_package_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2017
    .local v1, "packageName":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 2018
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mCustomerAppPackageName:Ljava/lang/String;

    goto :goto_0

    .line 2020
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mCustomerAppPackageName:Ljava/lang/String;

    .line 2022
    :goto_0
    const-string v2, "customer_app_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2023
    .local v2, "appName":Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    .line 2024
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mCustomerAppName:Ljava/lang/String;

    goto :goto_1

    .line 2026
    :cond_2
    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mCustomerAppName:Ljava/lang/String;

    .line 2028
    :goto_1
    return-void
.end method

.method public blacklist setClientData(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientData"    # Ljava/lang/String;

    .line 2117
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mClientData:Ljava/lang/String;

    .line 2118
    return-void
.end method

.method public blacklist setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;

    .line 2127
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mEmailAddress:Ljava/lang/String;

    .line 2128
    return-void
.end method

.method public blacklist setFailureCount(I)V
    .locals 0
    .param p1, "failureCount"    # I

    .line 2077
    iput p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mFailureCount:I

    .line 2078
    return-void
.end method

.method public blacklist setNoticeMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "noticeMessage"    # Ljava/lang/String;

    .line 2087
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mNoticeMessage:Ljava/lang/String;

    .line 2088
    return-void
.end method

.method public blacklist setOtpCount(I)V
    .locals 0
    .param p1, "otpCount"    # I

    .line 2067
    iput p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mOTPCount:I

    .line 2068
    return-void
.end method

.method public blacklist setOtpKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "otpKey"    # Ljava/lang/String;

    .line 2057
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mOTPKey:Ljava/lang/String;

    .line 2058
    return-void
.end method

.method public blacklist setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 2097
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mPhoneNumber:Ljava/lang/String;

    .line 2098
    return-void
.end method

.method public blacklist setRequesterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "requesterName"    # Ljava/lang/String;

    .line 2107
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mRequesterName:Ljava/lang/String;

    .line 2108
    return-void
.end method

.method public blacklist setSkipPin(Z)V
    .locals 0
    .param p1, "skipPin"    # Z

    .line 2047
    iput-boolean p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mSkipPin:Z

    .line 2048
    return-void
.end method

.method public blacklist setSkipSupport(Z)V
    .locals 0
    .param p1, "skipSupport"    # Z

    .line 2037
    iput-boolean p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mSkipSupport:Z

    .line 2038
    return-void
.end method
