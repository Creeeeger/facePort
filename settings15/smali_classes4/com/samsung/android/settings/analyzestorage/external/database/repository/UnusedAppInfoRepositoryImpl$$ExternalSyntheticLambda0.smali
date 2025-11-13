.class public final synthetic Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/external/database/repository/UnusedAppInfoRepositoryImpl;

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppBnRInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppBnRInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method
