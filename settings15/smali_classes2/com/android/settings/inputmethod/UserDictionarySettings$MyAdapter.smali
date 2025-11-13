.class public final Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field public final mIndexer:Landroid/widget/AlphabetIndexer;

.field public final mViewBinder:Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter$1;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6

    const v2, 0x7f0d0bfb

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    new-instance p3, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter$1;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const p4, 0x104055a

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p4, "word"

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    new-instance v0, Landroid/widget/AlphabetIndexer;

    invoke-direct {v0, p2, p4, p1}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    return-void
.end method


# virtual methods
.method public final getPositionForSection(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getSectionForPosition(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getSections()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$MyAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
