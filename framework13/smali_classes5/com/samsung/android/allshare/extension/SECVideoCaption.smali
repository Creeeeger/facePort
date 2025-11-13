.class public Lcom/samsung/android/allshare/extension/SECVideoCaption;
.super Ljava/lang/Object;
.source "SECVideoCaption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;
    }
.end annotation


# static fields
.field private static final blacklist TAG_CLASS:Ljava/lang/String; = "SECVideoCaption"

.field private static blacklist mSubTitleURL:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputmSubTitleURL(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/allshare/extension/SECVideoCaption;->mSubTitleURL:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getSubTitleURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "resourceURL"    # Ljava/lang/String;

    .line 78
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    new-instance v0, Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;

    invoke-direct {v0, p1}, Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "mGetSubTitleThread":Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;
    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;->start()V

    .line 86
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "SECVideoCaption"

    const-string v3, "getSubTitleURL : InterruptedException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 91
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    sget-object v1, Lcom/samsung/android/allshare/extension/SECVideoCaption;->mSubTitleURL:Ljava/lang/String;

    return-object v1

    .line 79
    .end local v0    # "mGetSubTitleThread":Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
