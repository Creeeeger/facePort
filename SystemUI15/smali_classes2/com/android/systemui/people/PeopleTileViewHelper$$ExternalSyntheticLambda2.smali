.class public final synthetic Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/people/PeopleTileViewHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/people/PeopleTileViewHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/people/PeopleTileViewHelper;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/people/PeopleTileViewHelper;

    check-cast p1, Landroid/app/people/ConversationStatus;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
