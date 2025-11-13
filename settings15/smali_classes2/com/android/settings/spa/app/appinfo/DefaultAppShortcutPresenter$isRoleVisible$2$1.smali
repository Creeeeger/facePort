.class public final Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isRoleVisible$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $continuation:Lkotlin/coroutines/Continuation;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/coroutines/SafeContinuation;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isRoleVisible$2$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isRoleVisible$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isRoleVisible$2$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isRoleVisible$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isRoleVisible$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
