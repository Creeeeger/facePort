.class public final Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIconResId:I

.field public final mPrimaryTitle:Ljava/lang/String;

.field public final mSecondaryTitle:Ljava/lang/String;

.field public final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mPrimaryTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mSecondaryTitle:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mIconResId:I

    iput-object p4, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mValue:Ljava/lang/String;

    return-void
.end method
