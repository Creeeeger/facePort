.class public final Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIconResId:I

.field public final mPrimaryTitle:Ljava/lang/String;

.field public final mSecondaryTitle:Ljava/lang/String;

.field public final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mPrimaryTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mPrimaryTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mSecondaryTitle:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mIconResId:I

    iput-object p4, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mValue:Ljava/lang/String;

    return-void
.end method
