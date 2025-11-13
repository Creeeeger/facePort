.class public final Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher$DarkChange;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final EMPTY:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher$DarkChange;


# instance fields
.field public final areas:Ljava/util/Collection;

.field public final tint:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher$DarkChange;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const v3, -0x12000001

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher$DarkChange;-><init>(Ljava/util/Collection;FI)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher$DarkChange;->EMPTY:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher$DarkChange;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;FI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/graphics/Rect;",
            ">;FI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher$DarkChange;->areas:Ljava/util/Collection;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher$DarkChange;->tint:I

    return-void
.end method
