.class public final Landroidx/emoji2/text/EmojiCompat$CompatInternal$1;
.super Landroidx/emoji2/text/EmojiCompat$InitCallback;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$0:Landroidx/emoji2/text/EmojiCompat$CompatInternal;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/EmojiCompat$CompatInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal$1;->this$0:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal$1;->this$0:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompat;->onMetadataLoadFailed(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onLoaded(Landroidx/emoji2/text/MetadataRepo;)V
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal$1;->this$0:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 4
    .line 5
    new-instance p1, Landroidx/emoji2/text/EmojiProcessor;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/emoji2/text/EmojiCompat;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$DefaultSpanFactory;

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/emoji2/text/EmojiCompat;->mGlyphChecker:Landroidx/emoji2/text/DefaultGlyphChecker;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :try_start_0
    const-string v4, "android.text.EmojiConsistency"

    .line 17
    .line 18
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v5, "getEmojiConsistencySet"

    .line 23
    .line 24
    new-array v6, v3, [Ljava/lang/Class;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    check-cast v4, Ljava/util/Set;

    .line 43
    .line 44
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    instance-of v6, v6, [I

    .line 59
    .line 60
    if-nez v6, :cond_1

    .line 61
    .line 62
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    :cond_2
    :goto_0
    invoke-direct {p1, v0, v2, v1, v4}, Landroidx/emoji2/text/EmojiProcessor;-><init>(Landroidx/emoji2/text/MetadataRepo;Landroidx/emoji2/text/EmojiCompat$DefaultSpanFactory;Landroidx/emoji2/text/EmojiCompat$GlyphChecker;Ljava/util/Set;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mProcessor:Landroidx/emoji2/text/EmojiProcessor;

    .line 75
    .line 76
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->mEmojiCompat:Landroidx/emoji2/text/EmojiCompat;

    .line 77
    .line 78
    iget-object p1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Landroidx/collection/ArraySet;

    .line 79
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    iget v1, p1, Landroidx/collection/ArraySet;->_size:I

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 94
    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    :try_start_1
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Landroidx/collection/ArraySet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 106
    .line 107
    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 112
    .line 113
    .line 114
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-ge v3, p0, :cond_3

    .line 119
    .line 120
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    check-cast p0, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;

    .line 125
    .line 126
    iget-object p1, p0, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 127
    .line 128
    new-instance v1, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    invoke-direct {v1, p0}, Landroidx/emoji2/text/EmojiCompat$InitWithExecutor$$ExternalSyntheticLambda0;-><init>(Landroidx/emoji2/text/EmojiCompat$InitWithExecutor;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    return-void

    .line 140
    :catchall_1
    move-exception p1

    .line 141
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 142
    .line 143
    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 148
    .line 149
    .line 150
    throw p1
.end method
