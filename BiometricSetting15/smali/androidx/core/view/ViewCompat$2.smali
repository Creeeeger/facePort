.class public final Landroidx/core/view/ViewCompat$2;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mContentChangeType:I

.field public final mFrameworkMinimumSdk:I

.field public final mTagKey:I

.field public final mType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(ILjava/lang/Class;III)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/core/view/ViewCompat$2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Landroidx/core/view/ViewCompat$2;->mTagKey:I

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/core/view/ViewCompat$2;->mType:Ljava/lang/Class;

    .line 9
    .line 10
    iput p3, p0, Landroidx/core/view/ViewCompat$2;->mContentChangeType:I

    .line 11
    .line 12
    iput p4, p0, Landroidx/core/view/ViewCompat$2;->mFrameworkMinimumSdk:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final set(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Landroidx/core/view/ViewCompat$2;->mTagKey:I

    .line 3
    .line 4
    iget v2, p0, Landroidx/core/view/ViewCompat$2;->mFrameworkMinimumSdk:I

    .line 5
    .line 6
    iget v3, p0, Landroidx/core/view/ViewCompat$2;->$r8$classId:I

    .line 7
    .line 8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    if-lt v4, v2, :cond_0

    .line 11
    .line 12
    packed-switch v3, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p2, Ljava/lang/CharSequence;

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat$Api30Impl;->setStateDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :pswitch_0
    check-cast p2, Ljava/lang/CharSequence;

    .line 23
    .line 24
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat$Api28Impl;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    goto :goto_4

    .line 28
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    if-lt v4, v2, :cond_1

    .line 31
    .line 32
    packed-switch v3, :pswitch_data_1

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api30Impl;->getStateDescription(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    goto :goto_0

    .line 40
    :pswitch_1
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api28Impl;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v4, p0, Landroidx/core/view/ViewCompat$2;->mType:Ljava/lang/Class;

    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move-object v2, v0

    .line 59
    :goto_0
    packed-switch v3, :pswitch_data_2

    .line 60
    .line 61
    .line 62
    check-cast v2, Ljava/lang/CharSequence;

    .line 63
    .line 64
    move-object v3, p2

    .line 65
    check-cast v3, Ljava/lang/CharSequence;

    .line 66
    .line 67
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    :goto_1
    xor-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :pswitch_2
    check-cast v2, Ljava/lang/CharSequence;

    .line 75
    .line 76
    move-object v3, p2

    .line 77
    check-cast v3, Ljava/lang/CharSequence;

    .line 78
    .line 79
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    goto :goto_1

    .line 84
    :goto_2
    if-eqz v2, :cond_6

    .line 85
    .line 86
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 87
    .line 88
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api29Impl;->getAccessibilityDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-nez v2, :cond_3

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    instance-of v0, v2, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    check-cast v2, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 100
    .line 101
    iget-object v0, v2, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 105
    .line 106
    invoke-direct {v0, v2}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    if-nez v0, :cond_5

    .line 110
    .line 111
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 112
    .line 113
    invoke-direct {v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget p0, p0, Landroidx/core/view/ViewCompat$2;->mContentChangeType:I

    .line 123
    .line 124
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    .line 125
    .line 126
    .line 127
    :cond_6
    :goto_4
    return-void

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
