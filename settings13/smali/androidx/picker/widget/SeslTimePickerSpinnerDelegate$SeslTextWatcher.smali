.class public Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;
.super Ljava/lang/Object;
.source "SeslTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeslTextWatcher"
.end annotation


# instance fields
.field private changedLen:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;II)V
    .locals 0

    .line 1254
    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1250
    iput p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    .line 1255
    iput p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    .line 1256
    iput p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    add-int/lit8 p1, p3, 0x1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p3, 0x1

    .line 1258
    :goto_0
    iput p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mNext:I

    return-void
.end method

.method private changeFocus()V
    .locals 3

    .line 1341
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 1342
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1343
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1345
    iget v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    if-nez v0, :cond_0

    .line 1346
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setHour(I)V

    .line 1347
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v0

    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1349
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    .line 1350
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v0

    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    :cond_1
    :goto_0
    return-void

    .line 1355
    :cond_2
    iget v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mNext:I

    if-ltz v0, :cond_3

    .line 1356
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mNext:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1358
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1359
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v0

    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1

    .line 1361
    :cond_3
    iget v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    if-ne v0, v1, :cond_4

    .line 1362
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    .line 1363
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v0

    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    :cond_4
    :goto_1
    return-void
.end method

.method private convertDigitCharacterToNumber(Ljava/lang/String;)I
    .locals 4

    .line 1369
    invoke-static {}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1800()[C

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v3, p0, v1

    .line 1370
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1371
    rem-int/lit8 v2, v2, 0xa

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1273
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->prevText:Ljava/lang/String;

    .line 1274
    iput p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1284
    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object p2

    iget p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p2, p2, p3

    invoke-virtual {p2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p3, "onClick"

    .line 1286
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "onLongClick"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1287
    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object p1

    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p0, p1, p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1291
    :cond_1
    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    const/4 p3, 0x1

    if-eqz p2, :cond_7

    if-eq p2, p3, :cond_2

    .line 1332
    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ge p2, p3, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    if-ne p1, p2, :cond_a

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    .line 1333
    invoke-static {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object p1

    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1334
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 1309
    :cond_2
    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    if-ne p2, p3, :cond_a

    .line 1310
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iget p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    if-ne p2, p4, :cond_3

    .line 1311
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object p1

    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1312
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 1314
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_a

    .line 1315
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->convertDigitCharacterToNumber(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x6

    if-lt p1, p2, :cond_4

    const/16 p2, 0x9

    if-gt p1, p2, :cond_4

    .line 1317
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object p1

    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1318
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1, p3}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1702(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;Z)Z

    .line 1319
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 1321
    :cond_4
    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1700(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_6

    const/4 p2, 0x5

    if-eq p1, p2, :cond_5

    if-nez p1, :cond_6

    .line 1322
    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1, p4}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1702(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;Z)Z

    .line 1323
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p0, p3}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1102(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;Z)Z

    goto :goto_0

    .line 1325
    :cond_6
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1, p4}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1702(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;Z)Z

    .line 1326
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p0, p4}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1102(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;Z)Z

    goto :goto_0

    .line 1293
    :cond_7
    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    if-ne p2, p3, :cond_a

    .line 1294
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iget p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    if-ne p2, p4, :cond_8

    .line 1295
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object p1

    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1296
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto :goto_0

    .line 1298
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_a

    .line 1299
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->convertDigitCharacterToNumber(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-gt p1, p2, :cond_9

    if-le p1, p3, :cond_a

    .line 1300
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result p1

    if-nez p1, :cond_a

    .line 1301
    :cond_9
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object p1

    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1302
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    :cond_a
    :goto_0
    return-void
.end method
