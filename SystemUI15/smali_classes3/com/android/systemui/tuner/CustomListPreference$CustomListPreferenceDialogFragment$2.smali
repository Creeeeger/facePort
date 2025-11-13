.class public final Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    iput p2, p1, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    invoke-virtual {p1}, Landroidx/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/CustomListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/preference/PreferenceDialogFragment;->mWhichButtonClicked:I

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
