.class public abstract Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;


# instance fields
.field private mIntentAction:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->mSize:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->mSize:J

    return-wide v0
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public final setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->mSize:J

    return-void
.end method
