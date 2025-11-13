.class public final Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$getLabel$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $app:Landroid/content/pm/ApplicationInfo;

.field public final synthetic this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$getLabel$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$getLabel$1;->$app:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$getLabel$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    iget-object p1, p1, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->appRepository:Lcom/android/settingslib/spaprivileged/model/app/AppRepository;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$getLabel$1;->$app:Landroid/content/pm/ApplicationInfo;

    check-cast p1, Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryImpl;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
