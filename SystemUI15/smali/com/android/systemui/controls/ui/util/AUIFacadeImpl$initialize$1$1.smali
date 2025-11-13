.class public final synthetic Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$initialize$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$initialize$1$1;->$tmp0:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$initialize$1$1;->$tmp0:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundPool:Landroid/media/SoundPool;

    return-void
.end method
