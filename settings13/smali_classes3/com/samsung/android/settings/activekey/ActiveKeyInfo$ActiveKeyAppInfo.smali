.class public Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;
.super Ljava/lang/Object;
.source "ActiveKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/activekey/ActiveKeyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ActiveKeyAppInfo"
.end annotation


# instance fields
.field public mDB:Ljava/lang/String;

.field public mIsEnabled:Z

.field public mLabel:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    return-void
.end method
