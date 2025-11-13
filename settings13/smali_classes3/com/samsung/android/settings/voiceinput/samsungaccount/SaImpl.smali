.class public Lcom/samsung/android/settings/voiceinput/samsungaccount/SaImpl;
.super Ljava/lang/Object;
.source "SaImpl.java"

# interfaces
.implements Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelperInterface;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isSamsungAccountSigned()Z
    .locals 2

    const-string v0, "SaImpl"

    const-string v1, "isSamsungAccountSigned"

    .line 21
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/SamsungAccountUtils;->isSamsungAccountSigned(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public requestToken(Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V
    .locals 2

    const-string v0, "SaImpl"

    const-string v1, "Request token"

    .line 27
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->getInstance()Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->execute(Landroid/content/Context;Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V

    return-void
.end method
