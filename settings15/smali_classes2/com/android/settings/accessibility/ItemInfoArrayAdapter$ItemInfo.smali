.class public abstract Lcom/android/settings/accessibility/ItemInfoArrayAdapter$ItemInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDrawableId:I

.field public final mSummary:Ljava/lang/CharSequence;

.field public final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/ItemInfoArrayAdapter$ItemInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/accessibility/ItemInfoArrayAdapter$ItemInfo;->mSummary:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/settings/accessibility/ItemInfoArrayAdapter$ItemInfo;->mDrawableId:I

    return-void
.end method
