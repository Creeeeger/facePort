.class public final Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Companion:Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager$Companion;

.field public static volatile instance:Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;


# instance fields
.field public contentWidthDp:I

.field public final listenerList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->Companion:Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->listenerList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->contentWidthDp:I

    return-void
.end method


# virtual methods
.method public final setContentWidthDp(IZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->contentWidthDp:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->contentWidthDp:I

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->listenerList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager$OnWidthChangedListener;

    invoke-interface {p1}, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager$OnWidthChangedListener;->onWidthChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
