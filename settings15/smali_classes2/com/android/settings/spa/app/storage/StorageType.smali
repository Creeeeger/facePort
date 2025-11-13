.class public abstract Lcom/android/settings/spa/app/storage/StorageType;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final filter:Lkotlin/jvm/functions/Function1;

.field public final titleResource:I


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/spa/app/storage/StorageType;->titleResource:I

    iput-object p2, p0, Lcom/android/settings/spa/app/storage/StorageType;->filter:Lkotlin/jvm/functions/Function1;

    return-void
.end method
