.class public final Landroidx/compose/foundation/text/KeyboardActions;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Default:Landroidx/compose/foundation/text/KeyboardActions;


# instance fields
.field public final onDone:Lkotlin/jvm/functions/Function1;

.field public final onGo:Lkotlin/jvm/functions/Function1;

.field public final onNext:Lkotlin/jvm/functions/Function1;

.field public final onPrevious:Lkotlin/jvm/functions/Function1;

.field public final onSearch:Lkotlin/jvm/functions/Function1;

.field public final onSend:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/text/KeyboardActions;

    const/16 v1, 0x3f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(ILkotlin/jvm/functions/Function1;)V

    sput-object v0, Landroidx/compose/foundation/text/KeyboardActions;->Default:Landroidx/compose/foundation/text/KeyboardActions;

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 1

    and-int/lit8 p1, p1, 0x10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p2, v0

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/text/KeyboardActions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/text/KeyboardActions;

    iget-object v1, p1, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lkotlin/jvm/functions/Function1;

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lkotlin/jvm/functions/Function1;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lkotlin/jvm/functions/Function1;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lkotlin/jvm/functions/Function1;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lkotlin/jvm/functions/Function1;

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lkotlin/jvm/functions/Function1;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_5
    add-int/2addr v1, v0

    return v1
.end method
