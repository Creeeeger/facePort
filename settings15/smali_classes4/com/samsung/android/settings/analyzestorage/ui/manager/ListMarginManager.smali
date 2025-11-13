.class public final Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Companion:Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager$Companion;

.field public static volatile instance:Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;


# instance fields
.field public final listenerList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;->Companion:Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;->listenerList:Ljava/util/List;

    return-void
.end method
