.class public final Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$updateIcon$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $drawableAndState:Lkotlin/Pair;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;Lkotlin/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;",
            "Lkotlin/Pair<",
            "+",
            "Landroid/graphics/drawable/Drawable;",
            "+",
            "Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$updateIcon$1;->this$0:Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$updateIcon$1;->$drawableAndState:Lkotlin/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$updateIcon$1;->this$0:Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$updateIcon$1;->$drawableAndState:Lkotlin/Pair;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->drawableConsumer:Lcom/android/internal/widget/NotificationDrawableConsumer;

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Lcom/android/internal/widget/NotificationDrawableConsumer;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState;

    if-nez p0, :cond_3

    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$Empty;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$Empty;

    :cond_3
    iput-object p0, v0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager;->displayedState:Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState;

    return-void
.end method
