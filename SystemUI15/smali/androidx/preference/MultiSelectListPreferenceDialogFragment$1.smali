.class public final Landroidx/preference/MultiSelectListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/preference/MultiSelectListPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Landroidx/preference/MultiSelectListPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    iget-boolean p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    iget-object p3, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object p2, v0, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    iget-boolean p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    iget-object p3, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object p2, v0, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    :goto_0
    return-void
.end method
