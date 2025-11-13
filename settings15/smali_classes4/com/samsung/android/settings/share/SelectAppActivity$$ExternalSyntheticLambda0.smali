.class public final synthetic Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/samsung/android/settings/share/SelectAppActivity;->$r8$clinit:I

    new-instance v0, Ljava/util/ArrayList;

    const-class v1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    sget v0, Lcom/samsung/android/settings/share/SelectAppActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/share/SelectAppActivity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->selectEditMenuItem$1(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
