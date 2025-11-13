.class final Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportLargeCover$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportLargeCover$1;->this$0:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportLargeCover$1;->this$0:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
