.class public abstract Lcom/android/settingslib/spa/framework/common/SpaEnvironment;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appContext:Landroid/content/Context;

.field public final entryRepository:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settingslib/spa/framework/common/SpaEnvironment$entryRepository$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/spa/framework/common/SpaEnvironment$entryRepository$1;-><init>(Lcom/android/settingslib/spa/framework/common/SpaEnvironment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->entryRepository:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settingslib/spa/framework/common/SpaEnvironment$sliceDataRepository$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/spa/framework/common/SpaEnvironment$sliceDataRepository$1;-><init>(Lcom/android/settingslib/spa/framework/common/SpaEnvironment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->appContext:Landroid/content/Context;

    return-void
.end method
