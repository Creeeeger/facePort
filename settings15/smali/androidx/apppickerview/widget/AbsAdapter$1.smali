.class public final Landroidx/apppickerview/widget/AbsAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/apppickerview/widget/AbsAdapter$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget p0, p0, Landroidx/apppickerview/widget/AbsAdapter$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    check-cast p2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/text/Collator;->setStrength(I)V

    iget-object p2, p2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    iget-object p1, p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    check-cast p2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/text/Collator;->setStrength(I)V

    iget-object p2, p2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    iget-object p1, p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    check-cast p2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/text/Collator;->setStrength(I)V

    iget-object p1, p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    iget-object p2, p2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    check-cast p2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/text/Collator;->setStrength(I)V

    iget-object p1, p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    iget-object p2, p2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
