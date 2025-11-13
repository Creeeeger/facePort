.class Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mMessage:Ljava/lang/String;

.field public mNegativeButton:Ljava/lang/String;

.field public mPositiveButton:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mPositiveButton:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mNegativeButton:Ljava/lang/String;

    return-void
.end method
