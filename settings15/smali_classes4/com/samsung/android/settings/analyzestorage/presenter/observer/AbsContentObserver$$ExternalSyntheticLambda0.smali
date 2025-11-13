.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/observer/AbsContentObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/AbsContentObserver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/AbsContentObserver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mUpdaterListener:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

    if-eqz p1, :cond_0

    const-string p1, "CategoryContentObserver"

    const-string v0, "contentChanged"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mUpdaterListener:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

    invoke-interface {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;->onContentChanged()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
