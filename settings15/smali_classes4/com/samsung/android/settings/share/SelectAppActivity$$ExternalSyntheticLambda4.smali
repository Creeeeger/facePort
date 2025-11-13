.class public final synthetic Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/share/SelectAppActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/share/SelectAppActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iget-object v0, v0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBOriginalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/share/structure/ShareComponent;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
