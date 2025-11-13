.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;

    check-cast p1, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;->mContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;)V

    return-object p1
.end method
