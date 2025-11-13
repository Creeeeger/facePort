.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

.field public final synthetic f$1:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->isSignedIn(Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mSupportedStorageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
