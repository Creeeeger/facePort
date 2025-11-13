.class final Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$3;->INSTANCE:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    instance-of p0, p1, Lcom/android/internal/widget/ConversationLayout;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/android/internal/widget/ConversationLayout;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_1
    instance-of p0, p1, Lcom/android/internal/widget/MessagingLayout;

    if-eqz p0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/MessagingLayout;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_3
    sget-object p1, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    :goto_1
    return-object p1
.end method
